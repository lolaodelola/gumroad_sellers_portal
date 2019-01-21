class PurchasesController < ApplicationController

  def create
    purchase = Purchase.create!(purchase_params)
    purchase.update!(price: purchase.product.price)
  end

  private
  def purchase_params
    params.require(:purchase).permit(:price, :product_id, :refunded)
  end
end
