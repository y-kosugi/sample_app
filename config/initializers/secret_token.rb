# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    #Use the existing token.
    File.read(token_life).chomp
  else
    #Generate a new token and store it in token_life
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end


SampleApp::Application.config.secret_key_base = '6c5fce47c30526dbc3638c84cc99670334237d712b11c8079d4f136fd3e0d6b58a7eb6ac8e661bc5bc712bf8a16c2eab3f936775c4b52fa6cd5532d10c18da97'
