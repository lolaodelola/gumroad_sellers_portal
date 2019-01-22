require 'test_helper'

class SellerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "add_balance" do
    seller = sellers(:one)
    old_total_balance = seller.total_balance
    old_current_balance = seller.current_balance
    prod = products(:one)
    purchase = Purchase.create!(product_id: prod.id, price: prod.price)
    seller.add_balance(purchase.price)

    new_total_balance = old_total_balance + purchase.price
    new_current_balance = old_current_balance + purchase.price

    assert_equal new_total_balance, seller.total_balance
    assert_equal new_current_balance, seller.current_balance
  end
end
