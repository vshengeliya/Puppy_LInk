class Center < ApplicationRecord
    has_many :pets
    has_many :users, through: :pets
    has_many :breeders, through: :pets
end
