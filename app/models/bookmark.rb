class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, presence: true, length: { minimum: 6 }
  validates :movie_id, presence: true
  validates :list_id, presence: true
  validates_uniqueness_of :list_id, scope: :movie_id
end
