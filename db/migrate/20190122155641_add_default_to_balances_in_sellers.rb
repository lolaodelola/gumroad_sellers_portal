class AddDefaultToBalancesInSellers < ActiveRecord::Migration[5.2]
  def change
    change_column_default :sellers, :total_balance, from: nil, to: 0
    change_column_default :sellers, :current_balance, from: nil, to: 0
  end
end
