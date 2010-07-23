# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_scorganizer_session',
  :secret      => '6302d9826e8f66d1246a8bb145ba936dc9c694d0a3e124fd27dd968ab3ca27e1c0f1396c81634b965bddd12b0cf63529dff8ad5cb92f83733b8c372f9c116141'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
