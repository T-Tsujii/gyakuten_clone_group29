class LineText < ApplicationRecord
  validates :genre, :title, presence: true, length: { maximum: 35 }
  validates :content, length: { maximum: 30000 }
end
