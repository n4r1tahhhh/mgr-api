class Challenge < ApplicationRecord
  belongs_to :event
  has_many :submissions
  
  validates :title, presence: true
end
