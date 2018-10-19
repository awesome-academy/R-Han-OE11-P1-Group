class User < ApplicationRecord
  has_many :favorites
  has_many :playlists
  VALID_EMAIL_REGEX = Settings.models.modify_email
  validates :name, :email, :age, presence: true
  validates :name, length: {maximum: Settings.models.maximum_name}
  validates :age, numericality: true, length: {maximum: Settings.models.maximum_age}
  validate :email,length: {maximum: Settings.models.maximum_email},
    uniqueness: {case_sensitive: false}, format: {with: VALID_EMAIL_REGEX}
end
