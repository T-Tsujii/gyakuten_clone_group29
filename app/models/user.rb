class User < ApplicationRecord
  has_many :movies, dependent: :destroy
  has_many :watches, dependent: :destroy
  has_many :watched_movies, through: :watches, source: :movie
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
