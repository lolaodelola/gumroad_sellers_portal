class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :price
      t.string :name
      t.integer :seller_id

      t.timestamps
    end
  end
end
