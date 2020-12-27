# frozen_string_literal: true

class Ownership < ApplicationRecord
  belongs_to :user
  belongs_to :event
end
