# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.

if defined? ResqueWeb::Application
  if ENV["SECRET_TOKEN"]
    ResqueWeb::Application.config.secret_token = ENV["SECRET_TOKEN"]
  else
    if Rails.env.production?
      raise "You must set ENV[\"SECRET_TOKEN\"] in your app's config vars"
    elsif Rails.env.development? || Rails.env.test?
      # Generate a random secret key
      ENV["SECRET_TOKEN"] = ResqueWeb::Application.config.secret_token = SecureRandom.hex(30)
    end
  end
end

