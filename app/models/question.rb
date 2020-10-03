class Question < ApplicationRecord
  validates :title, presence: true, length: { maximum: 35 }
  validates :detail, presence: true, length: { maximum: 3000 }
end
