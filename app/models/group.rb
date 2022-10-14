class Group < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :deals, dependent: :destroy

  validates :name, presence: true, length: { in: 3..50 }
  validates :icon, presence: true

  def total_amount
    deals.sum('amount')
  end
end
