class QuestionfiveController < ApplicationController
  def index
    RSpotify::authenticate("b78a86e454a54e50b14d01a13b9147a1", "e8fb49ac07c94c40a8fa1f1176f086e0")
    @question5= RSpotify::Track.find("1ZLiS44mscjTkU4DAHr2DZ")
    @audio_features_for_quest5 = RSpotify::AudioFeatures.find("1ZLiS44mscjTkU4DAHr2DZ")   
    render locals: { :red => Red.new, :yellow => Yellow.new, :green => Green.new, :purple => Purple.new, :orange => Orange.new, :blue => Blue.new }


  end
end
