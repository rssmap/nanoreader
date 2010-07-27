# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_reader_sandbox_session',
  :secret      => '66a7836a7f3299d7ced9fd73bc70e2716839251b919824837b9eb37131ed15b0adb5791aad81fce653c5fb75cd8588f1d8fda1239a1bac597ce584ccf31c5694'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
