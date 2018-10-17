class User < ApplicationRecord
  has_many :playlist
  has_many :favorite
end
