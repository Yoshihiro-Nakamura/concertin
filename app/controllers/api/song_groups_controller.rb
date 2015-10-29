class Api::SongGroupsController < ApplicationController
  def index
    songs = Song.arr_video_id.shuffle
    render json: songs
  end
end
