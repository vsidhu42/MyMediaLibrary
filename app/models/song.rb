class Song < ApplicationRecord

  validates_presence_of :title
  validates :theyear, :songid, numericality: true, presence: true

end
