class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.belongs_to :favoritable, polymorphic: true

      t.timestamps
    end
    add_index :favorites,  [:favoritable_id, :favoritable_type]
  end
end
