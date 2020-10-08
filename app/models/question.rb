class Question < ApplicationRecord
    has_many :answers, dependent: :destroy
    validates :title, presence: true, length: { maximum: 35 }
    validates :detail, presence: true, length: { maximum: 3000 }
end
