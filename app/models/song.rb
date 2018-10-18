class Song < ApplicationRecord
  belongs_to :album
  has_many :playlist_song
end
