class AddUserToGreens < ActiveRecord::Migration[5.1]
  def change
    add_reference :greens, :user, foreign_key: true
  end
end
