class Challenge < ApplicationRecord
  belongs_to :event
  
  validates :title, presence: true
end
