class Pet < ApplicationRecord
    has_one :adopt
    has_one :user, through: :adopt
    belongs_to :breeder


    def self.breed_search(search)
        if search && search.length>1
        Pet.all.select do |pet|
          pet.breed == search
        end
        else Pet.all
        end
    end

    def self.age_search(search)
        if search && search.length>=1 && search.to_i >=1
        Pet.all.select do |pet|
          pet.age == search.to_i
        end
        else Pet.all
        end
    end

    def self.size_search(search)
        if search && search.length>1
        Pet.all.select do |pet|
          pet.size == search
        end
        else Pet.all
        end
    end

    def self.gender_search(search)
        if search && search.length>1
        Pet.all.select do |pet|
          pet.gender == search
        end
        else Pet.all
        end
    end

end
