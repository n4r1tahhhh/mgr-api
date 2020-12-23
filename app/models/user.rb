class User < ApplicationRecord
    validates :name, presence: true
    
    has_many :ownerships
    has_many :submissions
end
