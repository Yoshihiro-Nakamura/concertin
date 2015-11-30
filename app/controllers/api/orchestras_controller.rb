class Api::OrchestrasController < ApplicationController
  def show
    from = DateTime.now
    to = from + 1.month
    @concerts = Orchestra.find(params[:id]).concerts.where(start_datetime: from .. to).order(start_datetime: :desc)
    @orchestra_name = Orchestra.find(params[:id]).name
  end
end
