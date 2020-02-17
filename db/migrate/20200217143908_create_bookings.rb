class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :arrival_date
      t.date :departure_date
      t.references :palace, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
