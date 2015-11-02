class ConcertsController < ApplicationController
  def search
    @concerts = Song.find_by(video_id: params[:videoId]).concerts.shuffle
  end
end
