class Weather < ApplicationRecord
    has_many :data

    validates :celsius_temperature, :humidity, :wind_speed, :average_rainfall, :insolation, presence: true

    paginates_per 8
end
