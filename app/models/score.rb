class Score < ActiveRecord::Base
  belongs_to :student
  has_many :subject_scores
  has_many :subjects, through: :subject_scores

  validates :score, presence: true
end