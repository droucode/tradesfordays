class Quote < ApplicationRecord
  belongs_to :user
  has_many :enquiries
end
