class Member < ApplicationRecord
    validates :name, presence: true, length: { maximum: 30}
    scope :recent, -> { order(created_at: :desc).limit(5) }
end
