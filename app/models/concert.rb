class Concert < ActiveRecord::Base
  has_many :artist_concerts
  has_many :concert_contacts
  has_many :concert_songs
  has_many :artists, through: :artist_concerts
  has_many :contacts, through: :concert_contacts
  has_many :songs, through: :concert_songs
  belongs_to :orchestra
end
