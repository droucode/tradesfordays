class AddTradeserviceToQuote < ActiveRecord::Migration[6.0]
  def change
    add_reference :quotes, :tradeservice, null: false, foreign_key: true
  end
end
