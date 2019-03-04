class AddUserToOranges < ActiveRecord::Migration[5.1]
  def change
    add_reference :oranges, :user, foreign_key: true
  end
end
