class Collision < ApplicationRecord
  belongs_to :bird
  belongs_to :datum

  paginates_per 8
end
