class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :families, dependent: :destroy
  validates :first_name, :last_name, presence: true
  validates :description, length: { maximum: 1000 }
end
