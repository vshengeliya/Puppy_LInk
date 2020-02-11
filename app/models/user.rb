class User < ApplicationRecord
    has_secure_password
    
    has_many :adopts
    has_many :pets, through: :adopts

end
