class Subject < ActiveRecord::Base
  has_many :subject_scores
  has_many :scores, through: :subject_scores
end