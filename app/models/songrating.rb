class Songrating < ApplicationRecord

  validates_presence_of :name
  validates :songratingid, :rating, numericality: true, presence: true

end
