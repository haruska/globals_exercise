# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_globals_exercise_session',
  :secret      => '72bb24f3d6d2eda1c487881ade4aa7d786af215865ec23fd65890ec4cf37423128c7f2950ec35938c840ba78c240f1eadde113e396a249982f9d1cdc4159816a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
