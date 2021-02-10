class Category < ActiveRecord::Base
    has_many :boardgames
    attr_accessor :category
end