class AddImageUrlAndImageHeightAndImageWidthToBook < ActiveRecord::Migration
  def change
    add_column :books, :image_url, :text
    add_column :books, :image_height, :integer
    add_column :books, :image_width, :integer
  end
end
