class Boardgame < ActiveRecord::Base
    belongs_to :category
    attr_accessor :name, :published_year
end