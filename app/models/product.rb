class Product < ApplicationRecord
    validates :name, presence: true, length: { maximum: 30}
    scope :recent, -> { order(created_at: :desc).limit(5) } #事業を新規5つのみ表示(とりあえず)
end
