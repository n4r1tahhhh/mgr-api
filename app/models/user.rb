# frozen_string_literal: true

class User < ApplicationRecord
  before_save :downcase_email

  validates :name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }

  has_many :ownerships
  has_many :submissions

  has_secure_password

  private

  def downcase_email
    self.email = email.downcase
  end
end
