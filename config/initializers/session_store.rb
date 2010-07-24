# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_nanoreader_session',
  :secret      => 'e32d44d0ef7b9d8b735d3a0a8b5328503254b074e4a55f1a660f53335be5d3b8feeac08e9d23154b40053a0cb74a2d8b143a441ef004dd9ed0d7188ff8cd7884'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
