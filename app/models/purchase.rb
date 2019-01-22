class Purchase < ApplicationRecord
  belongs_to :product
  belongs_to :seller

  after_create :update_seller_balance

  def refund
    update!(refunded: true)
    seller.refund_purchase(price)
  end

  private
  def update_seller_balance
    seller.add_balance(price)
  end
end
