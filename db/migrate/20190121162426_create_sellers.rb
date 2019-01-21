class CreateSellers < ActiveRecord::Migration[5.2]
  def change
    create_table :sellers do |t|
      t.string :name
      t.integer :total_balance
      t.integer :current_balance
      t.datetime :last_payout

      t.timestamps
    end
  end
end
