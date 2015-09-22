class Student < ActiveRecord::Base
  belongs_to :gradeclass
  has_many :scores
end