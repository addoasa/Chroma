class Purple < ApplicationRecord
    belongs_to :user, optional: true

    validates :danceability, :energy, :loudness, :mode, :valence, :tempo, :user_id, presence: true
end
