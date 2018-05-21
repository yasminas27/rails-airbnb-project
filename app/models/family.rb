class Family < ApplicationRecord
  belongs_to :user
  validates :name, :capacity, :price_pppn, presence: true
  validates :description, presence: true, length: { minimum: 100, maximum: 1000 }
end
