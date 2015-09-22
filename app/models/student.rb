class Student < ActiveRecord::Base
  belongs_to :classroom
  has_many :scores
end