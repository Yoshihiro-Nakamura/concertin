class ConcertSong < ActiveRecord::Base
  belongs_to :concert
  belongs_to :song
  has_one :composer, through: :songs
end
