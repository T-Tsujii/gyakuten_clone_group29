class TextBook < ApplicationRecord
  has_many :reads, dependent: :destroy
  has_many :read_users, through: :reads, source: :user
  validates :genre, :title, presence: true, length: { maximum: 35 }
  validates :content, presence: true, length: { maximum: 30000 }

  def read_by?(user)
    reads.find_by(user_id: user.id).present?
  end

  mount_uploader :image, ImageUploader

end
