class Student < ActiveRecord::Base
  belongs_to :gradeclass
  has_many :scores, dependent: :destroy

  validates :number, presence: true, uniqueness: true
  validates :name, presence: true
end