class Api::ConcertsController < ApplicationController
  def index
    from = DateTime.now
    to = from + 1.month
    @concerts = Concert.where(start_datetime: from .. to).order(start_datetime: :asc)
  end

  def show
    @concert = Concert.find(params[:id])
  end

end
