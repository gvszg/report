class Student < ActiveRecord::Base
  belongs_to :gradeclass
  has_many :scores, dependent: :destroy

  accepts_nested_attributes_for :scores, allow_destroy: true
end