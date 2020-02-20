class DeletePhotoFromPalace < ActiveRecord::Migration[5.2]
  def change
    remove_column :palaces, :photo
  end
end
