class Read < ApplicationRecord
  belongs_to :user
  belongs_to :text_book
  validates :user_id, uniqueness: {
    scope: :text_book_id,
    message: "は同じテキストに2回以上読破済はできません"
  }
end
