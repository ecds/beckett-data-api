# frozen_string_literal: true

require 'google/apis/sheets_v4'
require 'googleauth'
require 'googleauth/stores/file_token_store'

class GoogleImport
  def initialize(options)
    @logger = Rails.logger
    @options = options
    @service = Google::Apis::SheetsV4::SheetsService.new
    @service.client_options.application_name = 'Becket Import'
    @service.authorization = authorize
    if options[:sheet_id]
      response = @service.get_spreadsheet(options[:sheet_id], ranges: options[:range], include_grid_data: true)
      @sheet = response.sheets[0]
    end

    @sheets = [
      {
        sheet_id: '1lrbBrMM3cV9d_foQfi5VyJO4gwtl4UkL4N3JWa-fjeo',
        type: 'person',
        range: 'A2:P'
      },
      {
        sheet_id: '1nd88cZegFqC_IbjY2G8C5nejmkgNCtDlsf-4oMmSykU',
        type: 'organization',
        range: 'A2:I'
      },
      {
        sheet_id: '1JvjvU-70ApkYCXcIXRLGiagASmYih8mfYxuo9kqP_Sg',
        type: 'place',
        range: 'A2:E'
      },
      {
        sheet_id: '1SvYsRQVRlo-ZTVYuJaFt9oCJYpbb3NJm7cijM86GbQg',
        type: 'production',
        range: 'A2:N'
      },
      {
        sheet_id: '1yuQykRVY4S-FQuOg1P-nRQ9C5Ma439e5v9_uVALs2ns',
        type: 'writing',
        range: 'A2:G'
      },
      {
        sheet_id: '1FUAzp9McmDOK8-xIZk-JdSfomxQYmrjGoBNrhYLkZF4',
        type: 'translating',
        range: 'A2:G'
      },
      {
        sheet_id: '1lIYE6gGQcq5mbwilzWqOLJchLrc4iAwH0WMdM53axps',
        type: 'reading',
        range: 'A2:F'
      },
      {
        sheet_id: '1b1J0Gt9NPLsrfXJ-agc2GjCRb-7Upq7w1ddW40dV4i4',
        type: 'attendance',
        range: 'A2:M'
      },
      {
        sheet_id: '13RbWm78OXzNt6AfjvXzY7b6ldIsFtIrBFaw01v9ciQs',
        type: 'public_event',
        range: 'A2:D'
      },
      {
        sheet_id: '1DVByIJWiDNi78yUs81eidPQYAqL9E6ovsCztimwnCTg',
        type: 'work_of_art',
        range: 'A2:M'
      },
      {
        sheet_id: '1fOuJX-w3Tv6ZfK8_d6JRM29PIYaZk7i-_5Qdt3AtSck',
        type: 'music',
        range: 'A2:G'
      },
      {
        sheet_id: '1HeTeJqueJR4TWqgSCMJOgOglLLyYGfKux8YL57OYfg8',
        type: 'publication',
        range: 'A2:G'
      }
    ]
    @people_profiles = '1s_dkTpJJCxs5XOhbH6SwYka317buWLTJDw8GXCqsVx8'
    @orgs_profiles = '1jwgrdOzDVU36pmwNAdhJ2MGR8-IGQa4BZthwDiniy6c'
    @people_sheet = '1lrbBrMM3cV9d_foQfi5VyJO4gwtl4UkL4N3JWa-fjeo'

    if options[:type]
      @options[:entity_type] = options[:type]
      sheet_meta = @sheets.select {|sheet| sheet[:type] == options[:type] }.first
      response = @service.get_spreadsheet(sheet_meta[:sheet_id], ranges: sheet_meta[:range], include_grid_data: true)
      @sheet = response.sheets[0]
      Rails.logger.debug @sheet.data[0].row_data[0].values
    end
  end

  def bulk_import
    @sheets.each do |sheet|
      @logger.debug "#{Time.zone.now} loading #{sheet[:type]}"
      @options[:entity_type] = sheet[:type]
      response = @service.get_spreadsheet(sheet[:sheet_id], ranges: sheet[:range], include_grid_data: true)
      @sheet = response.sheets[0]
      import if @sheet.data
    end
  end

  def import
    @sheet.data[0].row_data.each do |row_data|
      Rails.logger.debug row_data.values[0]
      next unless row_data.values[0]
      next unless row_data.values[1]

      entity = Entity.find_or_create_by(
        legacy_pk: row_data.values[0].formatted_value.to_i,
        e_type: @options[:entity_type]
      )

      # next unless entity.label.blank?

      @logger.debug "#{@options[:entity_type]} - #{entity.legacy_pk} - #{row_data.values[0].formatted_value} - #{row_data.values[1].formatted_value}"

      # if entity.properties.nil?
      # end

      row_data.values.each_with_index do |column, index|
        next if column.formatted_value.nil?

        # p "#{column.text_format_runs} : #{column.formatted_value}"
        value = column.text_format_runs ? format_column(column) : column.formatted_value
        value = value.instance_of?(String) ? value.strip : value
        value = column.effective_format.text_format.italic ? "<i>#{value}</i>" : value
        row_values = {
          entity:,
          index:,
          value:
        }
        next if row_values[:value].nil?

        case @options[:entity_type]
        when 'attendance'
          entity = _attendance(row_values)
        when 'person'
          entity = _people(row_values)
        when 'organization'
          entity = _organization(row_values)
        when 'place'
          entity = _place(row_values)
        when 'reading'
          entity = _reading(row_values)
        when 'production'
          entity = _production(row_values)
        when 'work_of_art'
          entity = _art(row_values)
        when 'translating'
          entity = _translating(row_values)
        when 'writing'
          entity = _writing(row_values)
        when 'public_event'
          entity = _event(row_values)
        when 'music'
          entity = _music(row_values)
        when 'publication'
          entity = _publication(row_values)
        else
          'Entity type in missing or invalid.'
        end
      end
      next if entity.legacy_pk.zero?

      entity.save
      @logger.debug entity.label
      @logger.debug '__________'
    end
  end

  def person_profiles
    response = @service.get_spreadsheet(@people_profiles, ranges: 'A2:B', include_grid_data: true)
    @sheet = response.sheets[0]
    @sheet.data[0].row_data.each do |row_data|
      next unless row_data.values[0]

      entity = Entity.by_type('person').find_by(legacy_pk: row_data.values[0].formatted_value.to_i)

      next if entity.nil?

      column = row_data.values[1]
      value = column.text_format_runs ? format_column(column) : column.formatted_value
      entity.profile = value
      entity.save
    end
  end

  def org_profiles
    response = @service.get_spreadsheet(@orgs_profiles, ranges: 'A2:B', include_grid_data: true)
    @sheet = response.sheets[0]
    @sheet.data[0].row_data.each do |row_data|
      next unless row_data.values[0]

      entity = Entity.by_type('organization').find_by(legacy_pk: row_data.values[0].formatted_value.to_i)

      next if entity.nil?

      entity.profile = row_data.values[1].formatted_value
      entity.save
    end
  end

  private

  def format_column(column)
    start_indicies = []
    parts = []
    italic_parts = []
    column.text_format_runs.each_with_index do |tr, index|
      start_indicies.push(tr.start_index.to_i)
      italic_parts.push(index) if tr.format.italic?
    end

    start_indicies.each_with_index do |start, index|
      last = index == start_indicies.length - 1 ? column.formatted_value.length : start_indicies[index + 1]
      parts.push(column.formatted_value[start...last])
    end

    italic_parts.each do |part|
      parts[part] = "<i>#{parts[part]}</i>"
    end

    parts.join
  end

  def authorize
    oob_uri = 'urn:ietf:wg:oauth:2.0:oob'
    credentials = 'credentials.json'
    token = 'token.yaml'
    scope = Google::Apis::SheetsV4::AUTH_SPREADSHEETS_READONLY

    client_id = Google::Auth::ClientId.from_file(credentials)
    token_store = Google::Auth::Stores::FileTokenStore.new(file: token)
    authorizer = Google::Auth::UserAuthorizer.new(client_id, scope, token_store)
    user_id = 'default'
    credentials = authorizer.get_credentials(user_id)
    if credentials.nil?
      url = authorizer.get_authorization_url(base_url: oob_uri)
      @logger.debug 'Open the following URL in the browser and enter the ' \
                    "resulting code after authorization:\n" + url
      code = gets
      credentials = authorizer.get_and_store_credentials_from_code(
        user_id:, code:, base_url: oob_uri
      )
    end
    credentials
  end

  # updated
  def _attendance(values)
    entity = values[:entity]
    if (values[:index]).zero?
      entity.legacy_pk = values[:value].to_i
    elsif values[:index] == 1
      event_type = values[:value].downcase == 'reading' ? '_reading' : values[:value].downcase.parameterize.underscore
      if Entity.event_types.keys.include? event_type
        entity.event_type = event_type
      else
        10.times { @logger.debug("********** #{event_type} *************") }
      end
    elsif values[:index] == 2
      entity.description = values[:value]
    elsif values[:index] == 3 && !values[:value].nil?
      entity.alternate_spellings = values[:value].split(';').map(&:strip)
    elsif values[:index] == 4
      entity.place_date = values[:value]
    elsif values[:index] == 5 && !values[:value].nil?
      entity.attended_with = values[:value].split(',').map(&:strip)
    elsif values[:index] == 6
      entity.director = values[:value]
    elsif values[:index] == 7 && !values[:value].nil?
      entity.performed_by = values[:value].split(';').map(&:strip)
    elsif values[:index] == 9
      entity.notes = values[:value]
    elsif values[:index] == 12 && !values[:value].nil?
      entity.alternate_names = values[:value].split(';').map(&:strip)
    end
    entity
  end

  # updated
  def _people(values)
    entity = values[:entity]
    @logger.debug "#{values[0]} - #{values[1]}"
    if (values[:index]).zero?
      entity.legacy_pk = values[:value].to_i
    elsif values[:index] == 1
      entity.last_name = values[:value]
    elsif values[:index] == 2
      entity.first_name = values[:value]
    elsif values[:index] == 3
      entity.life_dates = values[:value]
    elsif values[:index] == 4
      entity.description = values[:value]
    elsif values[:index] == 5 && !values[:value].nil?
      entity.alternate_spellings = values[:value].split(';').map {|e| e.tr('"', '').strip }
    elsif values[:index] == 6
      entity.links = [values[:value]]
    elsif values[:index] == 14 && !values[:value].nil?
      entity.alternate_names = values[:value].split(';').map(&:strip)
    end
    entity
  end

  # updated
  def _organization(values)
    entity = values[:entity]
    if (values[:index]).zero?
      entity.legacy_pk = values[:value].to_i
    elsif values[:index] == 1
      entity.label = values[:value]
    elsif values[:index] == 2 && !values[:value].nil?
      entity.alternate_spellings = values[:value].split(';').map {|e| e.tr('"', '').strip }
    elsif values[:index] == 3
      entity.description = values[:value]
    elsif values[:index] == 7
      entity.links = [values[:value]]
    elsif values[:index] == 8
      entity.alternate_names = values[:value].split(';').map(&:strip)
    end
    entity
  end

  # updated
  def _place(values)
    entity = values[:entity]
    case values[:index]
    when 0
      entity.legacy_pk = values[:value].to_i
    when 1
      entity.label = values[:value]
    when 2
      entity.links = [values[:value]]
    when 3
      entity.description = values[:value]
    end
    entity
  end

  # updated
  def _reading(values)
    entity = values[:entity]
    case values[:index]
    when 0
      entity.legacy_pk = values[:value].to_i
    when 1
      entity.authors = [values[:value]]
    when 2
      entity.label = values[:value]
    when 3
      entity.publication_information = values[:value]
    when 4
      entity.notes = values[:value]
    when 5
      entity.publication_format = values[:value]
    end
    entity
  end

  def _production(values)
    entity = values[:entity]
    if (values[:index]).zero?
      entity.legacy_pk = values[:value].to_i
    elsif values[:index] == 1
      entity.label = values[:value]
    elsif values[:index] == 2 && !values[:value].nil?
      entity.proposal = values[:value]
    elsif values[:index] == 3 && !values[:value].nil?
      entity.response = values[:value]
    elsif values[:index] == 4 && !values[:value].nil?
      entity.reason = values[:value]
    elsif values[:index] == 5 && !values[:value].nil?
      entity.director = values[:value]
    elsif values[:index] == 6 && !values[:value].nil?
      entity.personnel = values[:value].split(';').map(&:strip)
    elsif values[:index] == 7 && !values[:value].nil?
      entity.theater = values[:value]
    elsif values[:index] == 8 && !values[:value].nil?
      entity.alternate_spellings = values[:value]
    elsif values[:index] == 9 && !values[:value].nil?
      entity.city = values[:value]
    elsif values[:index] == 10 && !values[:value].nil?
      entity.date_str = values[:value]
    elsif values[:index] == 11 && !values[:value].nil?
      entity.cast = values[:value].split(';').map(&:strip)
    elsif values[:index] == 12 && !values[:value].nil?
      entity.notes = values[:value]
    elsif values[:index] == 13 && !values[:value].nil?
      entity.links = [values[:value]]
    elsif values[:index] == 14 && !values[:value].nil?
      entity.alternate_names = values[:value]
    end
    entity
  end

  # updated
  def _art(values)
    entity = values[:entity]
    if (values[:index]).zero?
      entity.legacy_pk = values[:value]
    elsif values[:index] == 1
      entity.artist = values[:value]
    elsif values[:index] == 2
      entity.artist_alternate_spellings = values[:value].split(';').map(&:strip)
    elsif values[:index] == 3
      entity.label = values[:value]
    elsif values[:index] == 4
      entity.description = values[:value]
    elsif values[:index] == 5 && !values[:value].nil?
      entity.alternate_names = values[:value].split(';').map(&:strip)
    elsif values[:index] == 6
      entity.owner_location = values[:value]
    elsif values[:index] == 7
      entity.owner_location_current = values[:value]
    elsif values[:index] == 8
      entity.notes = values[:value]
    elsif values[:index] == 10
      entity.date = values[:value]
    elsif values[:index] == 11
      entity.links = [values[:value]]
    end
    entity
  end

  # updated
  def _translating(values)
    entity = values[:entity]
    if (values[:index]).zero?
      entity.legacy_pk = values[:value].to_i
    elsif values[:index] == 1
      entity.label = values[:value]
    elsif values[:index] == 2
      entity.authors = [values[:value]]
    elsif values[:index] == 3 && !values[:value].nil?
      entity.translated_into = values[:value].downcase.parameterize.underscore
    elsif values[:index] == 4
      entity.translators = [values[:value]]
    elsif values[:index] == 5
      entity.translated_title = values[:value]
    elsif values[:index] == 6
      entity.notes = values[:value]
    end
    entity
  end

  # updated
  def _writing(values)
    entity = values[:entity]
    case values[:index]
    when 0
      entity.legacy_pk = values[:value].to_i
    when 1
      entity.label = values[:value]
    when 2
      entity.publication_information = values[:value]
    when 3
      entity.proposal = values[:value]
    when 4
      entity.notes = values[:value]
    when 6
      entity.date_str = values[:value]
    end
    entity
  end

  # updated
  def _event(values)
    entity = values[:entity]
    case values[:index]
    when 0
      entity.legacy_pk = values[:value].to_i
    when 1
      entity.label = values[:value]
    when 2
      entity.description = values[:value]
    when 3
      entity.date_str = values[:value]
    end
    entity
  end

  def _music(values)
    @logger.debug '************'
    @logger.debug "#{values[0]} - #{values[1]}"
    entity = values[:entity]
    if (values[:index]).zero?
      entity.legacy_pk = values[:value].to_i
    elsif values[:index] == 1 && !values[:value].nil?
      entity.composer = values[:value]
    elsif values[:index] == 2
      entity.label = values[:value]
    elsif values[:index] == 3 && !values[:value].nil?
      entity.alternate_spellings = values[:value].split(';').map(&:strip)
    elsif values[:index] == 4 && !values[:value].nil?
      entity.performed_by = values[:value].split(';').map(&:strip)
    elsif values[:index] == 5 && !values[:value].nil?
      entity.description = values[:value]
    elsif values[:index] == 6 && !values[:value].nil?
      entity.notes = values[:value]
    end
    entity
  end

  # updated
  def _publication(values)
    entity = values[:entity]
    case values[:index]
    when 0
      entity.legacy_pk = values[:value].to_i
    when 1
      entity.label = values[:value]
    when 2
      entity.authors = [values[:value]]
    when 3
      entity.translators = [values[:value]]
    when 4
      entity.publication_information = values[:value]
    when 5
      entity.notes = values[:value]
    end
    entity
  end
end
