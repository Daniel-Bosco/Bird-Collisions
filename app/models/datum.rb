class Datum < ApplicationRecord
  belongs_to :airport
  belongs_to :flight
  belongs_to :weather
  belongs_to :report
  has_many :collisions

  validates :date, :flight_phase, presence: true

  paginates_per 8
end
