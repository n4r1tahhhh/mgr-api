# frozen_string_literal: true

class Event < ApplicationRecord
  validates :title, presence: true, uniqueness: true

  has_many :ownerships
  has_many :challenges
end
