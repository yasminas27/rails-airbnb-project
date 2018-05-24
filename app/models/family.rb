class Family < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :capacity, :price_pppn, presence: true
  validates :description, presence: true, length: { maximum: 1000 }
  mount_uploader :photo, PhotoUploader

  attr_accessor :price, :night
end
