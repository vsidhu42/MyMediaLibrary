class Book < ApplicationRecord

  validates_presence_of :title
  validates :theyear, :bookid, numericality: true, presence: true

end
