class Tradeservice < ApplicationRecord
    has_many :enquiries
    has_many :quotes, through:enquiries 
end
