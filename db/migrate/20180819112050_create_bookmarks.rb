class CreateBookmarks < ActiveRecord::Migration[5.1]
  def change
    create_table :bookmarks do |t|
      t.string :url
      t.string :description 
      t.string :title
      t.integer :rating
      t.timestamps
    end
  end
end
