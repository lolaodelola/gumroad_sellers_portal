class AddSellerIdToPurchases < ActiveRecord::Migration[5.2]
  def change
    add_column :purchases, :seller_id, :integer
  end
end
