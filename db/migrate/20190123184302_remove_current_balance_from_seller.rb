class RemoveCurrentBalanceFromSeller < ActiveRecord::Migration[5.2]
  def change
    remove_column :sellers, :current_balance
  end
end
