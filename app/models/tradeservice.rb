class Tradeservice < ApplicationRecord
    has_many :enquiries
    has_many :quotes 
    has_one_attached :picture
end
