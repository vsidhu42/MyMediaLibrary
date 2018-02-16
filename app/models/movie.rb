class Movie < ApplicationRecord

  # has_many :movieratings, :dependent => :destroy

  validates_presence_of :title
  validates :theyear, :movieid, numericality: true, presence: true

end
