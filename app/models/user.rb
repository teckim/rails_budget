class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :deals, dependent: :destroy
  has_many :groups, dependent: :destroy

  validates :name, presence: true, length: { in: 2..25 }
end
