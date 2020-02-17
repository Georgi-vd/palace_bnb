class CreatePalaces < ActiveRecord::Migration[5.2]
  def change
    create_table :palaces do |t|
      t.string :name
      t.text :description
      t.references :user, foreign_key: true
      t.integer :price
      t.string :location

      t.timestamps
    end
  end
end
