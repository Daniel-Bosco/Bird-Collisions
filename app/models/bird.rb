class Bird < ApplicationRecord
    has_many :collisions

    validates :common_name, :scientific_name, presence: true, uniqueness: true

    paginates_per 8
end
