class Tradeservice < ApplicationRecord
    has_many :enquiries
    has_many :quotes 
    has_one_attached :picture
    validates :name, presence: true
    validates :budget, presence: true
    validates :trade, presence: true
    validates :description, presence: true
    validates :status, presence: true
    validates :location, presence: true
end
