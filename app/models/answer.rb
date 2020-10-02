class Answer < ApplicationRecord
  validates :content, presence: true, length: { maximum: 30000 }
end
