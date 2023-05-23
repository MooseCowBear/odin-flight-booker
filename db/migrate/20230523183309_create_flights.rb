class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.references :departing_from, null: false, foreign_key: { to_table: 'airports' }
      t.references :arriving_at, null: false, foreign_key: { to_table: 'airports' }
      t.datetime :departure_time
      t.integer :duration

      t.timestamps
    end
  end
end
