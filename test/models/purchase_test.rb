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

  test "find purchases to be paid out" do
    payouts = Purchase.prepare_payouts

    refute_empty payouts
  end
end
