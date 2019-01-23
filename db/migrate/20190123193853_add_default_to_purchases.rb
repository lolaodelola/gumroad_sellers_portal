class AddDefaultToPurchases < ActiveRecord::Migration[5.2]
  def change
    change_column_default :sellers, :total_balance, from: nil, to: false
  end
end
