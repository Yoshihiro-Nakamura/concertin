class Song < ActiveRecord::Base
  has_many :concert_songs
  has_many :concerts, through: :concert_songs
  belongs_to :composer

  scope :arr_video_id, -> { where('video_id is not null').pluck(:video_id) }
end
