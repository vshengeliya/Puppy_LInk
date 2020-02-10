class Breeder < ApplicationRecord
    has_many :pets
    has_many :centers, through: :pets
    has_many :users, through: :pets
end
