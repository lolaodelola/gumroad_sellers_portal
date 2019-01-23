class AddIndexToPurchases < ActiveRecord::Migration[5.2]
  def change
    add_index :purchases, :id
    add_index :purchases, :seller_id
    add_index :purchases, :product_id
  end
end
