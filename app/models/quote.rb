class Quote < ApplicationRecord
  belongs_to :user
  has_many :enquiries
  validates :price, presence: true 
  validates :user_id, presence: true
  validates :tradeservice_id, presence: true
  validates :enquiry_id, presence: true
end

