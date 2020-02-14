class Breeder < ApplicationRecord
    has_secure_password

    has_many :pets

    validates :name, uniqueness: true
    validates :rating, numericality: true, :allow_nil => true
    # validates :password, length: { minimum: 5 }, allow_blank: false
end
