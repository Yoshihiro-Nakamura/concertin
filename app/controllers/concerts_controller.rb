class ConcertsController < ApplicationController
  before_action :set_concert_params, only: [:create]
  def search
    from = DateTime.now
    to = from + 1.month
    @concerts = Song.find_by(video_id: params[:videoId]).concerts.where(start_datetime: from .. to).shuffle.uniq
  end

  def new
    @concert = Concert.new
    @orchestras = Orchestra.all
  end

  def create
    set_concert_params
    conductor = Conductor.where(name: params[:conductor][:name]).first_or_create
    hall = Hall.where(name: params[:hall][:name]).first_or_create
    concert = Concert.where(title: @title, start_datetime: @start_datetime, orchestra_id: @orchestra_id, hall_id: hall.id, conductor_id: conductor.id, price: @price).first_or_create
    create_artists(concert)
    create_songs(concert)
    create_contacts(concert)
    redirect_to action: :new
  end

  private
  def set_concert_params
    c = params[:concert]
    @start_datetime = DateTime.new c["start_datetime(1i)"].to_i, c["start_datetime(2i)"].to_i, c["start_datetime(3i)"].to_i, c["start_datetime(4i)"].to_i, c["start_datetime(5i)"].to_i
    @open_time = Time.new c["open_time(1i)"].to_i, c["open_time(2i)"].to_i, c["open_time(3i)"].to_i, c["open_time(4i)"].to_i, c["open_time(5i)"].to_i
    @orchestra_id = params[:orchestra].to_i
    @title = params[:concert][:title]
    @price = params[:concert][:price]
  end

  def create_artists(concert)
    # artists/artist_concertsの更新
    artists = params[:concert][:artist_attributes].to_a
    artists.each do |an_artist|
      if an_artist[1][:artist_name].blank?
        break
      end
      artist = Artist.where(name: an_artist[1][:artist_name]).first_or_create
      concert.artist_concerts.where(artist_id: artist.id, instrument_id: an_artist[1][:instrument_id].split(":")[1]).first_or_create
    end
  end

  def create_songs(concert)
    songs = params[:concert][:song_attributes].to_a
    songs.each do |a_song|
      if a_song[1][:composer_name].blank?
        break
      end
      composer = Composer.where(name: a_song[1][:composer_name]).first_or_create
      song = Song.where(title: a_song[1][:title], composer_id: composer.id).first_or_create
      concert.concert_songs.where(song_id: song.id).first_or_create
    end
  end

  def create_contacts(concert)
    contacts = params[:concert][:contact_attributes].to_a
    contacts.each do |a_contact|
      if a_contact[1][:name].blank?
        break
      end
      contact = Contact.where(name: a_contact[1][:name]).first_or_initialize
      unless a_contact[1][:phone_number].blank?
        contact.phone_number = a_contact[1][:phone_number]
        contact.save
      end
      concert.concert_contacts.where(contact_id: contact.id).first_or_create
    end
  end


end
