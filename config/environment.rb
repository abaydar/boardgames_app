# load dependencies/gemfile
require 'bundler/setup'
Bundler.require

require_all 'app'

# require_relative '../app/models/boardgame'
# require_relative '../app/models/category'

# establish connection to db

ActiveRecord::Base.establish_connection(
    :adapter => 'sqlite3',
    :database => 'db/boardgames.sqlite'
)