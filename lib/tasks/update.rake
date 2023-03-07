namespace :update_records do
  task update_all: :environment do
    Letter.all.each do |letter|
      letter.save
    rescue
    end

    Entity.all.each do |entity|
      entity.save
    rescue
    end
  end
end
