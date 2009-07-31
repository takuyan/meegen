# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_meegen_session',
  :secret      => 'deaffc3f3fd93e3b38b8ab021b11bbef863d204fd2c9f31fdb11cf77ee75ab1fffb73b67b8181c2aa6f5208c7612456dfa8f1d23d23ace1f90986048bdfeec96'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
