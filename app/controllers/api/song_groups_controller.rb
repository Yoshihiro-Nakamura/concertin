class Api::SongGroupsController < ApplicationController
  def index
    from = DateTime.now
    to = from + 1.month
    songs = Concert.joins("INNER JOIN songs ON concerts.main_song_id = songs.id").where(start_datetime: from .. to).order(start_datetime: :desc).pluck(:video_id).shuffle
    render json: songs
  end
end
