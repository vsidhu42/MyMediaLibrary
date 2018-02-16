class Movierating < ApplicationRecord

  validates_presence_of :name
  validates :movieratingid, :rating, numericality: true, presence: true

end
