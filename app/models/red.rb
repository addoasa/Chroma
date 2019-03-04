class Red < ApplicationRecord
    belongs_to :person, optional: true

    validates :danceability, :energy, :loudness, :mode, :valence, :tempo, :user_id, presence: true
end
