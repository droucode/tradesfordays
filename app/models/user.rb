class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :timeoutable
has_many :enquiries 
has_many :quotes 
validates :email, presence: true
validates :username, presence: true

before_validation :login_value 

private 
  def login_value 
    if login.nil?
      self.login = email unless email.blank?
    end 
end

