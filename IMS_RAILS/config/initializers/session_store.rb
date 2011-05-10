# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_IMS_RAILS_session',
  :secret      => 'fe08f51c5a15f2dc62dccc7010aee5aefff75b5e6ac07412ab044be356b058c24400aefaa70b93abfa502b8260f9250238f0fe83980928144c130eab64655b85'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
