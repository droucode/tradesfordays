class AddTradeserviceRefToEnquiry < ActiveRecord::Migration[6.0]
  def change
    add_reference :enquiries, :tradeservice, null: false, foreign_key: true
  end
end
