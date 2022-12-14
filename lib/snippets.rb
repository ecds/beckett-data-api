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
  headers = [:label, :type, :link]
  csv << headers
  Entity.where(published: true, legacy_pk: 99999999).each do |entity|
    csv << [entity.label, entity.e_type, entity.letters.map {|l| "https://beckettapi.ecdsdev.org/admin/letters/#{l.id}"}.join( ', ')]
  end
end

CSV.open('88888888.csv', 'wb') do |csv|
  headers = [:label, :type, :link]
  csv << headers
  Entity.where(published: true, legacy_pk: 88_888_888).each do |entity|
    csv << [entity.label, entity.e_type, entity.all_letters.map {|l| "https://beckettapi.ecdsdev.org/admin/letters/#{l.id}"}.join( ', ')]
  end
end

to_remove = []
Entity.place.where(published: true, legacy_pk: 88_888_888).each do |entity|
  dupes = Entity.place.where(label: entity.label)
  if dupes.count > 1
    keep = dupes.find {|d| d.legacy_pk < 80000000 }
    dupes.each do |dupe|
      next if dupe == keep
      to_remove.push({keep: keep.id, discard: dupe.id})
    end
  end
end