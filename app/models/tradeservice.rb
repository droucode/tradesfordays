class Tradeservice < ApplicationRecord
    has_many :enquiries
    has_many :quotes 
end
