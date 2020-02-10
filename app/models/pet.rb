class Pet < ApplicationRecord
    belongs_to :breeder
    belongs_to :user
    belongs_to :center
end
