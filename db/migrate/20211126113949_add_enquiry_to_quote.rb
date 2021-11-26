class AddEnquiryToQuote < ActiveRecord::Migration[6.0]
  def change
    add_reference :quotes, :enquiry, null: false, foreign_key: true
  end
end
