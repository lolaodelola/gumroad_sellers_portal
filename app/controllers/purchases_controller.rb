class PurchasesController < ApplicationController

  def create
    purchase = Purchase.create!(purchase_params)
    purchase.update!(seller_id: purchase.product.seller_id)
  end

  private
  def purchase_params
    params.require(:purchase).permit(:price, :product_id, :refunded, :seller_id)
  end
end
