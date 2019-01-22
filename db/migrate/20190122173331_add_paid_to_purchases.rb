class AddPaidToPurchases < ActiveRecord::Migration[5.2]
  def change
    add_column :purchases, :paid, :boolean, default: false
  end
end
