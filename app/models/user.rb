class User < ApplicationRecord
  has_secure_password
  has_one :red
  has_one :blue
  has_one :green
  has_one :yellow
  has_one :purple
  has_one :orange

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true, uniqueness: true
  validates :favoritegenre, presence: true
  accepts_nested_attributes_for :red

end
