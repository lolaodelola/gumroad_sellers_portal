  class Payouts

    def find_seller_purchases(seller_id)
      # TODO: Raise exception if prepared_purchases.empty?
      prepared_purchases = Purchase.prepare_payouts
      prepared_purchases.where(seller_id: seller_id)
    end

    def calculate_amount(seller_id)
      purchases = find_seller_purchases(seller_id)
      purchases.map do |purchase|
        purchase.price
      end.reduce(:+)
    end

    def update_purchases(seller_id)
      purchases = find_seller_purchases(seller_id)
      purchases.each {|purchase| purchase.update!(paid: true)}
    end

    def create_payout(seller_id, payout_date)
      amount = calculate_amount(seller_id)
      return if amount < 1
      Payout.create!(total: amount, seller_id: seller_id, date: payout_date)
      update_purchases(seller_id)
    end
  end