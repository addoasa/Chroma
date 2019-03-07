class QuestionfourController < ApplicationController
  def index
    RSpotify::authenticate("b78a86e454a54e50b14d01a13b9147a1", "e8fb49ac07c94c40a8fa1f1176f086e0")
    @question4= RSpotify::Track.find("282QGCfat8aMJ55RFV0BMb")
    @audio_features_for_quest4 = RSpotify::AudioFeatures.find("282QGCfat8aMJ55RFV0BMb")   
    render locals: { :red => Red.new, :yellow => Yellow.new, :green => Green.new, :purple => Purple.new, :orange => Orange.new, :blue => Blue.new }


  end
end
