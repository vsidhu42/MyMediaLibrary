class Book < ApplicationRecord

  # has_many :bookratings, :dependent => :destroy

  validates_presence_of :title
  validates :theyear, :bookid, numericality: true, presence: true

end
