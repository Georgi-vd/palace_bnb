class AddCoordinatesToPalaces < ActiveRecord::Migration[5.2]
  def change
    add_column :palaces, :latitude, :float
    add_column :palaces, :longitude, :float
  end
end
