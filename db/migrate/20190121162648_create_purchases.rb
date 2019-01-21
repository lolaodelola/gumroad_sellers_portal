class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.integer :price
      t.boolean :refunded
      t.integer :product_id

      t.timestamps
    end
  end
end
