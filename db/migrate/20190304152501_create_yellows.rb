class CreateYellows < ActiveRecord::Migration[5.1]
  def change
    create_table :yellows do |t|
      t.string :danceability
      t.string :energy
      t.string :loudness
      t.string :mode
      t.string :valence
      t.string :tempo

      t.timestamps
    end
  end
end
