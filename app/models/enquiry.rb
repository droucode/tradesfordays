class Enquiry < ApplicationRecord
  belongs_to :user
  belongs_to :tradeservice
  belongs_to :quote
end
