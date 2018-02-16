class Movierating < ApplicationRecord

  # belongs_to :movie

  validates_presence_of :name
  validates :movieratingid, :rating, numericality: true, presence: true

end
