class Concert < ActiveRecord::Base
  has_many :artist_concerts
  has_many :concert_contacts
  has_many :concert_songs
  has_many :artists, through: :artist_concerts
  has_many :contacts, through: :concert_contacts
  has_many :songs, ->{ order("songs.composer_id DESC") }, through: :concert_songs
  has_many :composers, as: :concert_songs, through: :songs
  belongs_to :orchestra
  belongs_to :conductor
  belongs_to :hall
end
