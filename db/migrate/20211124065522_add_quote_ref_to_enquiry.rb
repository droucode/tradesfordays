class AddQuoteRefToEnquiry < ActiveRecord::Migration[6.0]
  def change
    add_reference :enquiries, :quote, null: false, foreign_key: true
  end
end
