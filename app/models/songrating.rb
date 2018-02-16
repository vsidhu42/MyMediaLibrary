class Songrating < ApplicationRecord

  # belongs_to :song

  validates_presence_of :name
  validates :songratingid, :rating, numericality: true, presence: true

end
