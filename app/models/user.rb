class User < ApplicationRecord
  has_many :deals
  has_many :groups

  validates :name, presence: true, length: { in: 3..25 }
end
