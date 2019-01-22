class Purchase < ApplicationRecord
  belongs_to :product

  after_create :update_seller_balance

  private
  def update_seller_balance
    seller = product.seller
    seller.add_balance(price)
  end
end
