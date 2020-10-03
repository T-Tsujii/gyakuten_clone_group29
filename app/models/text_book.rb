class TextBook < ApplicationRecord
  validates :genre, :title, presence: true, length: { maximum: 35 }
  validates :content, presence: true, length: { maximum: 30000 }
end
