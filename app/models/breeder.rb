class Breeder < ApplicationRecord
    has_secure_password

    has_many :pets

    validates :name, uniqueness: true
    validates_numericality_of :rating, :less_than_or_equal_to => 5
    validates :password, length: { minimum: 5 }, allow_blank: false
end
