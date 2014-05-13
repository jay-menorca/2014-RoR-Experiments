class AddDetailsToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :photographer, :string
    add_column :photos, :copyrighted, :boolean
  end
end
