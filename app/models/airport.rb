class Airport < ApplicationRecord
  belongs_to :city
  has_many :data
  has_many :collisions, through: :data

  validates :name, presence: true, uniqueness: true
  validates :category, presence: true

  paginates_per 8
end
