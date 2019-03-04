class AddUserToPurples < ActiveRecord::Migration[5.1]
  def change
    add_reference :purples, :user, foreign_key: true
  end
end
