class Song < ActiveRecord::Base
<<<<<<< HEAD
  validates :title, presence: true, uniqueness: {scope: [:release_year, :artist_name], message: "cannot be repeated by the same artist in the same year"}
  validates :released, inclusion: {in: [true, false]}
  validates :artist_name, presence: true

  validates :release_year, presence: true, if: :released, numericality: {integer_only: true, less_than_or_equal_to: Date.current.year}
=======
>>>>>>> 9036bda33aaed58ba2c8a2f5480ec89a891185ca
end
