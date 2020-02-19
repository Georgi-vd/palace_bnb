class AddPhotoToPalaces < ActiveRecord::Migration[5.2]
  def change
    add_column :palaces, :photo, :string
  end
end
