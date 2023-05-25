class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :flight, null: false, foreign_key: {to_table: :flights}

      t.timestamps
    end
  end
end
