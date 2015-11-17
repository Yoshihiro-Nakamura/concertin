class ConcertsController < ApplicationController
  def search
    from = DateTime.now
    to = from + 1.month
    @concerts = Song.find_by(video_id: params[:videoId]).concerts.where(start_datetime: from .. to).shuffle
  end
end
