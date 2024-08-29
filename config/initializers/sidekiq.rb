# frozen_string_literal: true

Sidekiq.configure_server do |config|
  config.redis = { url: Rails.application.credentials.dig(RAILS['ENV'].to_sym, :redis_url) }
  config.logger.level = Logger::ERROR
end
