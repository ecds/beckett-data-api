class ImportDataJob < ApplicationJob
  queue_as :default

  def perform(*args)
entities = HTTParty.get('https://ot-api.ecdsdev.org/list-entities', timeout: 1000)
ids = Entity.all.map(&:id)
entities.each do |e|
  next if ids.include? e['id']
  entity = Entity.create(id: e['id'], e_type: e['e_type'])
  e['label'] = '-' if e['label'].nil? || e['label'] == ' '
  if e['e_type'] == 'person'
    names = Namae.parse e['label']
    entity.update(first_name: names[0].given, last_name: names[0].family, legacy_pk: e['legacy_pk']) unless names[0].nil?
  else
    entity.update(label: e['label'], legacy_pk: e['legacy_pk'])
  end
  puts entity.label
end; nil

    letters = HTTParty.get('https://ot-api.ecdsdev.org/list-letters', timeout: 1000)
    letters.each do |letter|
      l = Letter.find_or_create_by(id: letter['id'], legacy_pk: letter['legacy_pk'], date: letter['date'])
      letter['mentions'].each do |mention|
        m = Mention.create(
          letter: l,
          entity: Entity.find_or_create_by(id: mention['entity'])
        )
        mention['tags'].each {|tag| m.tag_list.add(tag) }
        m.save
      end
    end

    recipients = HTTParty.get('https://ot-api.ecdsdev.org/list-recipients', timeout: 1000)
    recipients.each do |r|
      next if r['l_pk'].nil?

      entity = Entity.find(r['recipient'])
      letter = Letter.find(r['letter'])
      Rails.logger.debug entity.label
      next if letter.recipients.include? entity

      letter.recipients << entity
    end
    recipients = nil

    destinations = HTTParty.get('https://ot-api.ecdsdev.org/list-destinations', timeout: 1000)
    destinations.each do |r|
      entity = Entity.find(r['e_id'])
      letter = Letter.find(r['l_id'])
      Rails.logger.debug entity.label
      next if letter.destinations.include? entity

      letter.destinations << entity
    end
    destinations = nil

    origins = HTTParty.get('https://ot-api.ecdsdev.org/list-origins', timeout: 1000)
    origins.each do |r|
      next if r.nil?

      Rails.logger.debug r
      entity = Entity.find(r['entity'])
      letter = Letter.find(r['letter'])
      Rails.logger.debug entity.label
      next if letter.origins.include? entity

      letter.origins << entity
    end
    origins = nil

    senders = HTTParty.get('https://ot-api.ecdsdev.org/list-senders', timeout: 1000)
    senders.each do |r|
      next if r.nil?

      Rails.logger.debug r
      begin
        entity = Entity.find(r['entity'])
        letter = Letter.find(r['letter'])
        Rails.logger.debug entity.label
        next if letter.senders.include? entity

        letter.senders << entity
      rescue ActiveRecord::RecordNotFound
        Rails.logger.debug 'poop'
      end
    end
    senders = nil

    i = GoogleImport.new({})
    i.bulk_import

    bs = BigSam.new
    bs.big_sam.attach(io: File.open('/data/BigSamAug23.xlsx'), filename: 'BigSam.xlsx')
    bs.save
  end
end