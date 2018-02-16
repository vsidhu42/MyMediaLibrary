class Bookrating < ApplicationRecord

  # belongs_to :book

  validates_presence_of :name
  validates :bookratingid, :rating, numericality: true, presence: true

end
