class TracksController < ApplicationController
  def index
    RSpotify::authenticate("b78a86e454a54e50b14d01a13b9147a1", "e8fb49ac07c94c40a8fa1f1176f086e0")
    @alltracksA = RSpotify::Track.search('a ', limit: 10, offset: 50, market: 'US')

    
    @alltracks = @alltracksA 

    render locals: { :red => Red.new, :yellow => Yellow.new, :green => Green.new, :purple => Purple.new, :orange => Orange.new, :blue => Blue.new }

  end

  def show
  end
end
