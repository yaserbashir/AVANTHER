class AddRoomIdToRoom < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :room_id, :integer
  end
end
