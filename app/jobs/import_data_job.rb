class ImportDataJob < ApplicationJob
  queue_as :default

  def perform(*args)
    entities = HTTParty.get('https://ot-api.ecdsdev.org/list-entities', timeout: 1000)
    ids = Entity.all.map(&:id)
    entities.each do |e|
      next if ids.include? e['id']
      e['e_type'] = 'generic' if e['e_type'].blank?
      e['label'] = '-' if e['label'].nil?
      entity = Entity.create(id: e['id'], e_type: e['e_type'], label: e['label'])
      logger.debug(entity.label)
    end

    i = GoogleImport.new({})
    i.bulk_import

    bs = BigSam.new
    bs.big_sam.attach(io: File.open('/data/BigSamAug23.xlsx'), filename: 'BigSam.xlsx')
    bs.save
  end
end