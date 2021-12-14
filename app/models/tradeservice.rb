class Tradeservice < ApplicationRecord
    has_many :enquiries
    has_many :quotes 
    has_one_attached :picture
    validates :name, presence: true, format: { with: /\A[a-zA-Z][a-zA-Z ]+\z/ }
    validates :budget, presence: true, format: { with: /\A[a-zA-Z][a-zA-Z ]+\z/ }
    validates :trade, presence: true, format: { with: /\A[a-zA-Z][a-zA-Z ]+\z/ }
    validates :description, presence: true
    validates :status, presence: true, format: { with: /\A[a-zA-Z][a-zA-Z ]+\z/ }
    validates :location, presence: true, format: { with: /\A[a-zA-Z][a-zA-Z ]+\z/ }

    after_create :log_create
    after_update :log_update

 
    def to_s
        "Tradeservice #{id}; #{name}, #{budget},#{trade}, #{description}, #{status}, #{location}"
    end

    def log_create
        logs.create! body: 'Created '
    end

    def log_update
        logs.create! body: 'Updated'
    end
  

end
