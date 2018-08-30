class MusicVenuesController < ApplicationController

  def index
     # if location params exist find nearest 3 locations and return in order of distance from the location params

    # else show all venues on map
    # button that takes in text field in view and points at this endpoint
    # music_venues?address=1720nashlandchicagoil60622&latitude=23&longitude=423

    if params[:search].present?
      # @music_venues = MusicVenue.near(params[:search], 1, :order => :distance)
      @music_venues = MusicVenue.search(params[:search])
      .near(music_venue.address, 10)
        .order("created_at DESC")

    else
    @music_venues = MusicVenue.paginate(page: params[:page], per_page: 5)
    @hash = Gmaps4rails.build_markers(@music_venues) do |music_venue, marker|
      marker.lat music_venue.latitude
      marker.lng music_venue.longitude
      marker.infowindow music_venue.name
      marker.json({ title: music_venue.name })
      end
    end
  end

  def show
    @venue = MusicVenue.find(params[:id])
  end

  def address
    [street, city, state, country].compact.join(', ')
  end

  def search

  end

end

