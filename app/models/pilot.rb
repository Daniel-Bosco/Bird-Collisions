class Pilot < ApplicationRecord
    has_many :flights

    validates :first_name, :last_name, :privilege_level, :document, :birth_date, presence: true
    validates :document, uniqueness: true

    paginates_per 8

    def full_name
        last_name + ", " + first_name
    end
end
