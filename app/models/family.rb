class Family < ApplicationRecord
  belongs_to :user
  validates :name, :capacity, :price_pppn, presence: true
  validates :description, presence: true, length: { maximum: 1000 }

  attr_accessor :price, :night
end
