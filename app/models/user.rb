class User < ApplicationRecord
    has_secure_password
    
    has_many :adopts
    has_many :pets, through: :adopts

    validates_numericality_of :age, :greater_than_or_equal_to => 16
    validates :name, uniqueness: true
    validates :password, length: { minimum: 5 }, allow_blank: false
end
