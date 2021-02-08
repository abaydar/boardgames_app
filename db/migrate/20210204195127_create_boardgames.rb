class CreateBoardgames < ActiveRecord::Migration[5.2]
  def change
    create_table :boardgames do |t|
      t.string :name
      t.integer :published_year
      t.belongs_to :category
    end
  end
end
