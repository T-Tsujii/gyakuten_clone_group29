class User < ApplicationRecord
  has_many :watches, dependent: :destroy
  has_many :watched_movies, through: :watches, source: :movie

  has_many :reads, dependent: :destroy
  has_many :read_text_books, through: :reads, source: :text_book

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
