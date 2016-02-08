class Api::ConcertsController < ApplicationController
  def index
    from = DateTime.now
    to = from + 1.month
    @concerts = Concert.where(start_datetime: from .. to).order(start_datetime: :asc)
  end

  def show
    @concert = Concert.find(params[:id])
  end

  def get_hall
    @halls = Hall.where('name LIKE(?)', "%#{params[:term]}%").pluck(:name)
  end

  def get_conductor
    @conductors = Conductor.where('name LIKE(?)', "%#{params[:term]}%").pluck(:name)
  end

  def get_concert_title
    @concert_titles = Concert.where('title LIKE(?)', "%#{params[:term]}%").pluck(:title)
  end

  def get_artist
    @artists = Artist.where('name LIKE(?)', "%#{params[:term]}%").pluck(:name)
  end

  def get_contact
    @contacts = Contact.where('name LIKE(?)', "%#{params[:term]}%").pluck(:name)
  end

  def get_instrument
    @instruments = Instrument.all
  end

  def get_composer
    @composers = Composer.where('name LIKE(?)', "%#{params[:term]}%").pluck(:name)
  end

  def get_song
    @songs = Song.where('title LIKE(?)', "%#{params[:term]}%").pluck(:title)
  end
end
