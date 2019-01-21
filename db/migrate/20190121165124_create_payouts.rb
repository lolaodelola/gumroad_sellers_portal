class CreatePayouts < ActiveRecord::Migration[5.2]
  def change
    create_table :payouts do |t|
      t.integer :total
      t.datetime :date
      t.integer :seller_id

      t.timestamps
    end
  end
end
