class Category < ActiveRecord::Base
    has_many :boardgames
end