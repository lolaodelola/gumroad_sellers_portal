class Seller < ApplicationRecord
  has_many :products

  def add_balance(price)
    update!(total_balance: total_balance + price, current_balance: current_balance + price)
  end
end
