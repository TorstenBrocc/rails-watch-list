class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates :comment, length: { minimum: 6 }
  # is unique for a given movie/list couple (FAILED - 2)
  validates :movie_id, uniqueness: { scope: :list_id, message: "is already in the list" }
end
