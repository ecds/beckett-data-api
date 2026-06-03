class ResaveAllLettersWorker
  include Sidekiq::Job

  def perform
    Letter.find_each do |record|
      record.save!
    rescue StandardError => e
      Rails.logger.error("Failed to resave Letter ##{record.id}: #{e.message}")
    end
  end
end
