class Pet < ApplicationRecord
    has_one :adopt
    has_one :user, through: :adopt
    belongs_to :breeder
end
