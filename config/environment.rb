# load dependencies/gemfile
require 'bundler/setup'
Bundler.require


require_relative '../app/boardgame'

# establish connection to db

ActiveRecord::Base.establish_connection(
    :adapter => 'sqlite3',
    :database => 'db/boardgames.sqlite'
)