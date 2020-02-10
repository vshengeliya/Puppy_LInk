class User < ApplicationRecord
    has_many :pets
    has_many :centers, through: :pets
    has_many :breeders, through: :pets
end
