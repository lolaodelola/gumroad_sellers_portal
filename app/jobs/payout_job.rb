class PayoutJob < ApplicationJob
  queue_as :default

  def perform(payout_date)
    Seller.all.each do |seller|
      Payouts.new.create_payout(seller.id, payout_date)
    end
  end
end