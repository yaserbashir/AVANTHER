class AddAvailabilityToRoom < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :availability, :boolean
  end
end
