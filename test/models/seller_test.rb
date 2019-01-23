require 'test_helper'

class SellerTest < ActiveSupport::TestCase

  test "add_balance" do
    seller = sellers(:one)
    old_total_balance = seller.total_balance
    purchase = purchases(:one)
    new_total_balance = old_total_balance + purchase.price

    seller.add_balance(purchase.price)

    assert_equal new_total_balance, seller.total_balance
  end

  test "refund_balance" do
    seller = sellers(:one)
    old_total_balance = seller.total_balance
    purchase = purchases(:refunded)
    new_total_balance = old_total_balance - purchase.price

    seller.refund_purchase(purchase.price)


    assert_equal new_total_balance, seller.total_balance
  end

  test "find all product purchases" do
    seller = sellers(:one)
    seller_purchases_count = seller.purchases.count
    product_purchases_count = seller.products.map do |product|
      product.purchases.count
    end.reduce(:+)

    assert_equal seller_purchases_count, product_purchases_count
  end
end
