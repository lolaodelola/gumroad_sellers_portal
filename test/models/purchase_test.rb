require 'test_helper'

class PurchaseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "refund_balance" do
    purchase = purchases(:one)

    purchase.refund

    assert_equal true, purchase.refunded
  end
end
