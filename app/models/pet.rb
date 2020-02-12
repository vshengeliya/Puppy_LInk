class Pet < ApplicationRecord
    has_one :adopt
    has_one :user, through: :adopt
    belongs_to :breeder


    def self.search (src)
        if src && src.length>1
        Pet.all.select do |pet|
          pet.breed == src
        end
        else Pet.all
        end
    end

end
