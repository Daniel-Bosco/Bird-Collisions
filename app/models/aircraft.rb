class Aircraft < ApplicationRecord
    has_many :flights

    validates :category, :certification, :model, presence: true

    paginates_per 8

    def model_certification
        model + " (" + certification + ")"
    end
end
