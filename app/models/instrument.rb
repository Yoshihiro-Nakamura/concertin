class Instrument < ActiveRecord::Base
  has_many :artist_concerts
  has_many :artists, through: :artist_concerts
end
