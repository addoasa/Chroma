class ArtistsController < ApplicationController
  def index
    if !params[:artist_name].empty?
      RSpotify::authenticate("b78a86e454a54e50b14d01a13b9147a1", "e8fb49ac07c94c40a8fa1f1176f086e0")
       @artists = RSpotify::Artist.search(params[:artist_name])
    end
  end

  def show
    RSpotify::authenticate("b78a86e454a54e50b14d01a13b9147a1", "e8fb49ac07c94c40a8fa1f1176f086e0")
    @artist = RSpotify::Artist.find(params[:id])
  end
end
