class Movie < ApplicationRecord
  has_many :watches, dependent: :destroy
  has_many :watched_users, through: :watches, source: :user

  validates :title , presence: true
  validates :url , presence: true
  validates :genre, presence: true

  def watched_by?(user)
    watches.find_by(user_id: user.id).present?
  end

end
