class Tradeservice < ApplicationRecord
    has_many :enquiries
    has_many :quotes 
    has_one_attached :picture
    validates :name, presence: true
    validates :budget, presence: true
    validates :trade, presence: true
    validates :description, presence: true, format: { with: /\A[a-zA-Z][a-zA-Z ]+\z/ }
    validates :status, presence: true
    validates :location, presence: true

    after_create :log_create
    after_update :log_update
    after_validation :capitalize_title
 
    def to_s
        "Tradeservice #{id}; #{name}, #{budget},#{trade}, #{description}, #{status}, #{location}"
    end

    def log_create
        logs.create! body: 'Created '
    end

    def log_update
        logs.create! body: 'Updated'
    end
  
    def capitalize_title
      self.title = title.capitalize
    end

end
