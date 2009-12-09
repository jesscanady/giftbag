# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_giftbag_session',
  :secret      => 'a67d4efc3df985f0da528fd82504cff522cf5f47124f93b75cee231b7aa9d0025cdd5c68a002a13c8d6d41e8ba31818e1d22ed637e44eeb5ad69636ac21e33e8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
