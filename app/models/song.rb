class Song < ActiveRecord::Base
  validates :title, presence: true, uniqueness: {scope: [:release_year, :artist_name], message: "cannot be repeated by the same artist in the same year"}
  validates :released, inclusion: {in: [true, false]}
  validates :artist_name, presence: true

  validates :release_year, presence: true, if: :released, numericality: {integer_only: true, less_than_or_equal_to: Date.current.year}
end
