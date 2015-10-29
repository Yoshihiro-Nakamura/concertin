class SongsController < ApplicationController
  def search
    @song = Song.find_by(video_id: params[:videoId])
  end
end
