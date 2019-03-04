class User < ApplicationRecord
  has_secure_password
  has_one :red

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true, uniqueness: true
  validates :favoritegenre, presence: true
  accepts_nested_attributes_for :red

end
