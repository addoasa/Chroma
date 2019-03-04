class AddUserToReds < ActiveRecord::Migration[5.1]
  def change
    add_reference :reds, :user, foreign_key: true
  end
end
