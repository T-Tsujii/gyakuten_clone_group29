class LineText < ApplicationRecord
  validates :genre, :title, :created_at, :updated_at, presence: true, length: { maximum: 35 }
  validates :content, length: { maximum: 3000 }
end
