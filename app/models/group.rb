class Group < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :deal

  validates :name, presence: true, length: { in: 3..50 }
end
