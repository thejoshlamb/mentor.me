# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

#MentorMe::Application.config.secret_key_base = '94f6bae16864208433a38f8236b2313851bc6561f7894a7e22c2ad58a0b34dd6b14ee18ce421bc374283d3c883cc988c8a4963d993a057a9534f67f73ae818e2'


require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

MentorMe::Application.config.secret_key_base = secure_token