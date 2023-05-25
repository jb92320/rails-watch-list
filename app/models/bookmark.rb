class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :list_id, uniqueness: { scope: :movie_id }
  validates :movie_id, uniqueness: { scope: :list_id }
  validates :comment, length: { minimum: 6 }
  validates :movie, :list, presence: true
end
