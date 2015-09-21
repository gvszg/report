class Student < ActiveRecord::Base
  belongs_to :classroom
  has_many :student_subjects
  has_many :subjects, through: :student_subjects
end