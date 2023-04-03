require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module Projects
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # CORS configuration
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins 'localhost:3000'
        resource '*', headers: :any, methods: [:get, :post, :patch, :put, :delete]
      end
    end

    # Other configuration options...
  end
end
