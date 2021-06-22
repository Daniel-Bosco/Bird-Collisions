class Report < ApplicationRecord
    has_many :data

    validates :airline_expense, :airport_expense, :insurance_expense, :public_expense, :delayed_flights, :fatal_victims, presence: true

    paginates_per 8
end
