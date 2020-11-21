class Movie < ApplicationRecord
  has_many :watches
  has_many :users, through: :watches
  validates :title , presence: true
  validates :url , presence: true
  validates :genre, presence: true
end
