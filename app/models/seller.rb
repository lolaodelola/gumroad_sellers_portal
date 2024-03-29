class Seller < ApplicationRecord
  has_many :products
  has_many :purchases

  def add_balance(amount)
    update!(total_balance: total_balance + amount)
  end

  def refund_purchase(amount)
    update!(total_balance: total_balance - amount)
  end

end
