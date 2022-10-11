class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :deals
  has_many :groups

  validates :name, presence: true, length: { in: 3..25 }
end
