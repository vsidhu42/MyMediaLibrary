class Song < ApplicationRecord

  # has_many :songratings, :dependent => :destroy

  validates_presence_of :title
  validates :theyear, :songid, numericality: true, presence: true

end
