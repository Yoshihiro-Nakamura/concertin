class Song < ActiveRecord::Base
  has_many :concert_songs
  has_many :concerts, through: :concert_songs
  belongs_to :composer
end
