class State < ApplicationRecord
    has_many :cities
    
    validates :name, presence: true, uniqueness: true
    
    paginates_per 8
end
