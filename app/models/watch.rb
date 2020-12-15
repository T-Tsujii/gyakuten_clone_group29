class Watch < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  validates :user_id, uniqueness: {
    scope: :movie_id,
    message: "は同じ動画に2回以上視聴済はできません"
  }
end
