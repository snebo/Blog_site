class Article < ApplicationRecord
  has_many :comments
  # valid ations for the input
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
