class Movie < ApplicationRecord

  validates_presence_of :title
  validates :theyear, :movieid, numericality: true, presence: true

end
