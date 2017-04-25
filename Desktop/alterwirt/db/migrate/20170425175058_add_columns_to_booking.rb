class AddColumnsToBooking < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :start, :date
    add_column :bookings, :end, :date
  end
end
