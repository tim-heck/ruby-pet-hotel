class Owner < ActiveRecord::Base
    validates :name, presence: true
    validates :num_of_pets, presence: true
end