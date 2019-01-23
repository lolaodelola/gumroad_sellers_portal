class AddIndexToProducts < ActiveRecord::Migration[5.2]
  def change
    add_index :products, :id
    add_index :products, :seller_id
  end
end
