class AddThumbnailUrlToBookmark < ActiveRecord::Migration[5.1]
  def change
    add_column :bookmarks, :thumbnail_url, :text
  end
end
