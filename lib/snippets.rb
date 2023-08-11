# frozen_string_literal: true

Entity.e_types.each_key do |type|
  CSV.open("#{type}.csv", 'wb') do |csv|
    headers = [:id, *Entity.public_send(type).first.allowed_attributes]
    csv << headers
    Entity.public_send(type).each do |entity|
      csv << entity.values_at(*headers)
    end
  end
end

CSV.open('99999999.csv', 'wb') do |csv|
  headers = %i[label type link]
  csv << headers
  Entity.where(published: true, legacy_pk: 99_999_999).each do |entity|
    csv << [entity.label, entity.e_type, entity.letters.map {|l|
                                           "https://beckettapi.ecdsdev.org/admin/letters/#{l.id}"
                                         }.join(', ')]
  end
end

CSV.open('88888888.csv', 'wb') do |csv|
  headers = %i[label type link]
  csv << headers
  Entity.where(published: true, legacy_pk: 88_888_888).each do |entity|
    csv << [entity.label, entity.e_type, entity.all_letters.map {|l|
                                           "https://beckettapi.ecdsdev.org/admin/letters/#{l.id}"
                                         }.join(', ')]
  end
end

to_remove = []
Entity.place.where(published: true, legacy_pk: 88_888_888).each do |entity|
  dupes = Entity.place.where(label: entity.label)
  next unless dupes.count > 1

  keep = dupes.find {|d| d.legacy_pk < 80_000_000 }
  dupes.each do |dupe|
    next if dupe == keep

    to_remove.push({ keep: keep.id, discard: dupe.id })
  end
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

@service = Google::Apis::SheetsV4::SheetsService.new
@service.client_options.application_name = 'Becket Import'
@service.authorization = authorize

options = {
  sheet_id: '1b1J0Gt9NPLsrfXJ-agc2GjCRb-7Upq7w1ddW40dV4i4',
  type: 'attendance',
  range: 'A2:O'
}
response = @service.get_spreadsheet(options[:sheet_id], ranges: options[:range], include_grid_data: true)
@sheet = response.sheets[0]
@sheet.data[0].row_data.each do |row|
  columns = row.values.map(&:formatted_value)
  e = Entity.music.find_by(legacy_pk: columns[0].to_i)
  next if e.nil?
  next if columns[1].nil?
  puts columns[1].split(',').map(&:strip)
  e.update(composers: columns[1].split(',').map(&:strip))
end; nil

# types = []
@sheet.data[0].row_data.each do |row|
  e = Entity.work_of_art.find_by(legacy_pk: row.values.map(&:formatted_value)[0].to_i)
  next if e.nil?
  column = row.values[1]
  next if column.formatted_value.nil?
  value = column.text_format_runs ? format_column(column) : column.formatted_value
  value = value.instance_of?(String) ? value.strip : value
  value = column.effective_format.text_format.italic ? "<i>#{value}</i>" : value
  next if value.nil?
  puts(value.split(',').map(&:strip))
  # e.update(performed_by: value.split(',').map(&:strip))
end; nil

# options = {
#   sheet_id: '1yuQykRVY4S-FQuOg1P-nRQ9C5Ma439e5v9_uVALs2ns',
#   type: 'writing',
#   range: 'A2:H'
# }
# response = @service.get_spreadsheet(options[:sheet_id], ranges: options[:range], include_grid_data: true)
# @sheet = response.sheets[0]
# @sheet.data[0].row_data.each do |row|
#   columns = row.values.map(&:formatted_value)
#   e = Entity.writing.find_by(legacy_pk: columns[0].to_i)
#   next if e.nil?
#   next if columns[7].nil?
#   puts columns[7].split(', ').map(&:to_i)
#   e.update(years: columns[7].split(', ').map(&:to_i))
# end

options = {
  sheet_id: '1fOuJX-w3Tv6ZfK8_d6JRM29PIYaZk7i-_5Qdt3AtSck',
  type: 'music',
  range: 'A2:G'
}
response = @service.get_spreadsheet(options[:sheet_id], ranges: options[:range], include_grid_data: true)
@sheet = response.sheets[0]


options = {
  sheet_id: '1FUAzp9McmDOK8-xIZk-JdSfomxQYmrjGoBNrhYLkZF4',
  type: 'translating',
  range: 'A2:G'
}

{
  sheet_id: '1HeTeJqueJR4TWqgSCMJOgOglLLyYGfKux8YL57OYfg8',
  type: 'publication',
  range: 'A2:G'
}

@sheet.data[0].row_data.each do |row|
  # puts(row.values.map(&:formatted_value)[0].to_i)
  e = Entity.work_of_art.find_by(legacy_pk: row.values.map(&:formatted_value)[0].to_i)
  next if e.nil?
  # e.update(cities: nil)
  column = row.values[13]
  next if column.formatted_value.nil?
  value = column.text_format_runs ? format_column(column) : column.formatted_value
  value = value.instance_of?(String) ? value.strip : value
  value = column.effective_format.text_format.italic ? "<i>#{value}</i>" : value
  next if value.nil?
  new_value = value.split(',').map(&:strip)
  puts(new_value)
  # e.update(cities: new_value)
end; nil

Entity.reading.each do |a|
   year = a.publication_information&.match(/\d{4}/).to_s.to_i
   next if year.zero?
   puts year
  #  a.update(years: [year])
end; nil

Letter.all.each do |letter|
  letter.languages << Language.find_by(label: letter.language)
end
