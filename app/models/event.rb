class Event < ApplicationRecord
    validates :title, presence: true, uniqueness: true
end
