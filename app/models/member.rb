class Member < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30}
  scope :recent, -> { order(created_at: :desc).limit(5) }

  has_one_attached :avatar
end
