class QuestiononeController < ApplicationController
  def index
    RSpotify::authenticate("b78a86e454a54e50b14d01a13b9147a1", "e8fb49ac07c94c40a8fa1f1176f086e0")
    @question1= RSpotify::Track.find("6Xw3iWrQKgArwlRhVuU9CK")
    @audio_features_for_quest1 = RSpotify::AudioFeatures.find("6Xw3iWrQKgArwlRhVuU9CK")   
    render locals: { :blue => Blue.new }

  end
end
