class Seller < ApplicationRecord
  has_many :products

  def add_balance(amount)
    update!(total_balance: total_balance + amount, current_balance: current_balance + amount)
  end
end
