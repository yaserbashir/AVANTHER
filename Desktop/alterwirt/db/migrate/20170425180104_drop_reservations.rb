class DropReservations < ActiveRecord::Migration[5.0]
  def change
  	drop_table :reservations
  end
end
