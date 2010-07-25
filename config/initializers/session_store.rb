# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_scorganizer_session',
  :secret      => '8beef1861f27cf71f608b3f93bc46429acf966e393e1f41c3dde06a06358d95008ebd7aba80d01baadbd6e53251899907456544198275cbf8b66e3234603c7c0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
