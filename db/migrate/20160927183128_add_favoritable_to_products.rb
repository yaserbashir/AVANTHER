class AddFavoritableToProducts < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :favoritable, polymorphic: true
  end
end
