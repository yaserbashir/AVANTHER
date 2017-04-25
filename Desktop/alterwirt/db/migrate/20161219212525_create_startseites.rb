class CreateStartseites < ActiveRecord::Migration[5.0]
  def change
    create_table :startseites do |t|
      t.float :latitude
      t.string :longitude
      t.string :address

      t.timestamps
    end
  end
end
