class CreateRoomFeatures < ActiveRecord::Migration[5.0]
  def change
    create_table :room_features do |t|
      t.string :room_type

      t.timestamps
    end
  end
end
