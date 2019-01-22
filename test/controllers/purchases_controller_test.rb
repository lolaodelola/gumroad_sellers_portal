require 'test_helper'

class PurchasesControllerTest < ActionDispatch::IntegrationTest

  test "should create purchase" do
    prod = products(:one)
    post purchases_url, params: { purchase: { product_id: prod.id, seller_id: prod.seller_id } }

    assert_equal Purchase.last.price, prod.price
  end
end
