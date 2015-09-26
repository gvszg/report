class Gradeclass < ActiveRecord::Base
  has_many :students, dependent: :destroy

  validates :gradeclass, presence: true, uniqueness: true
end