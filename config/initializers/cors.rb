Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # React側はポート番号3000で作るので「localhost:3000」を指定
    origins "localhost:3000"

    resource "*",
      headers: :any,
      expose: ["access-token", "expiry", "token-type", "uid", "client"],
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
