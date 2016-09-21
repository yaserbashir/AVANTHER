class CreateProdicts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :designer
      t.integer :size
     

      t.timestamps
    end
  end
end
