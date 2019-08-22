class Pets < ActiveRecord::Base
    validates :name, presence: true
    validates :breed, presence: true
    validates :color, presence: true
    validates :checked_in, presence: true
end