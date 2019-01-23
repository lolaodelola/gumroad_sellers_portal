class AddIndexToPayouts < ActiveRecord::Migration[5.2]
  def change
    add_index :payouts, :seller_id
  end
end
