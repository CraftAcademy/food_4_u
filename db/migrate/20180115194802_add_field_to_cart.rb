class AddFieldToCart < ActiveRecord::Migration[5.1]
  def change
    add_column :carts, :price, :float
  end
end
