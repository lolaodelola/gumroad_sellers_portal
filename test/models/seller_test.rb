require 'test_helper'

class SellerTest < ActiveSupport::TestCase

  test "add_balance" do
    seller = sellers(:one)
    old_total_balance = seller.total_balance
    old_current_balance = seller.current_balance
    prod = products(:one)
    purchase = Purchase.create!(product_id: prod.id, price: prod.price, seller_id: seller.id)

    seller.add_balance(purchase.price)

    new_total_balance = old_total_balance + purchase.price
    new_current_balance = old_current_balance + purchase.price

    assert_equal new_total_balance, seller.total_balance
    assert_equal new_current_balance, seller.current_balance
  end

  test "refund_balance" do
    seller = sellers(:one)
    old_total_balance = seller.total_balance
    old_current_balance = seller.current_balance
    purchase = purchases(:refunded)

    seller.refund_purchase(purchase.price)

    new_total_balance = old_total_balance - purchase.price
    new_current_balance = old_current_balance - purchase.price

    assert_equal new_total_balance, seller.total_balance
    assert_equal new_current_balance, seller.current_balance
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
