class Flight < ApplicationRecord
  belongs_to :aircraft
  belongs_to :pilot
  has_many :data

  paginates_per 8
end
