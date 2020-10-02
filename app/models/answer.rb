class Answer < ApplicationRecord
  validates :created_at, :updated_at, presence: true, length: { maximum: 35 }
  validates :content, presence: true, length: { maximum: 3000 }
end
