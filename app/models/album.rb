class Album < ApplicationRecord
  belongs_to :artist
  belongs_to :category
  has_many :song
end
