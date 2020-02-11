class Adopt < ApplicationRecord
    belongs_to :user, dependent: :destroy
    belongs_to :pet, dependent: :destroy

    validates :pet_id, uniqueness: true
end
