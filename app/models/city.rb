class City < ApplicationRecord
  belongs_to :state
  has_many :airports

  validates :name, presence: true

  paginates_per 8
end
