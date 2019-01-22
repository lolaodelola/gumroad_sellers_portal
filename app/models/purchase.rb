class Purchase < ApplicationRecord
  belongs_to :product

  after_create :update_seller_balance

  def refund
    update!(refunded: true)
    seller = product.seller
    seller.refund_purchase(price)
  end

  private
  def update_seller_balance
    seller = product.seller
    seller.add_balance(price)
  end
end
