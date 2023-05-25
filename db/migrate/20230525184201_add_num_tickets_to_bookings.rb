class AddNumTicketsToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :num_tickets, :integer
  end
end
