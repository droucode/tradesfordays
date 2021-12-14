class Enquiry < ApplicationRecord
  belongs_to :user
  belongs_to :tradeservice
  belongs_to :quote
  validates :task, presence: true 
  validates :date, presence: true
  validates :address, presence: true 
  validates :user_id, presence: true
  validates :quote_id, presence: true
  validates :tradesrvice_id, presence: true
end
