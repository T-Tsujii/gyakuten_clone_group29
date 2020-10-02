class Question < ApplicationRecord
  validates :title, :created_at, :updated_at, presence: true, length: { maximum: 35 }
  validates :detail, presence: true, length: { maximum: 3000 }
end
