# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
# SampleApp::Application.config.secret_key_base = 'db5188b96304648cb9f34d85daa19f30c8c57fad1e7754c816f72ced7280092d7a3befc3344c2996d8e361b945c611ebea071f4d772511f16a822fb444e0daa1'

require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if file.exists?(token_file)
    File.read(token_file).chomp
  else
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end    
end  
