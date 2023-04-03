Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'localhost:3000' # Replace with the domain of your React application
      resource '*', headers: :any, methods: [:get, :post, :patch, :put, :delete]
    end
  end
  