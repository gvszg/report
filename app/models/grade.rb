class Grade < ActiveRecord::Base
  has_many :students, dependent: :destroy

  validates :number, presence: true, uniqueness: true
end