# frozen_string_literal: true

unless Rails.env.test?
  Sidekiq.configure_server do |config|
    config.redis = { url: "#{Rails.application.credentials.dig(ENV['RAILS_ENV'].to_sym, :redis_url)}/3" }
    config.logger.level = Logger::ERROR

    Sidekiq::Cron::Job.load_from_hash(
      'resave_all_letters' => {
        'cron' => '0 2 * * *', # 2am UTC daily
        'class' => 'ResaveAllLettersWorker',
        'timezone' => 'America/New_York'
      }
    )
  end

  Sidekiq.configure_client do |config|
    config.redis = { url: "#{Rails.application.credentials.dig(ENV['RAILS_ENV'].to_sym, :redis_url)}/3" }
  end
end
