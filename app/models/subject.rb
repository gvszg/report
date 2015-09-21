class Subject < ActiveRecord::Base
  has_many :student_subjects
  has_many :students, through: :student_subjects
  has_many :subject_scores
  has_many :scores, through: :subject_scores
end