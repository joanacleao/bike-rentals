class User < ApplicationRecord
  # mount_uploader :avatar, AvatarUploader

  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable

  has_many :bookings
  has_many :bikes
  has_many :reviews, through: :bookings


  mount_uploader :photo, PhotoUploader

end
