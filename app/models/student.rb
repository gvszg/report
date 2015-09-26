class Student < ActiveRecord::Base
  belongs_to :grade
  has_many :scores, dependent: :destroy
  
  accepts_nested_attributes_for :scores

  validates :number, presence: true, uniqueness: true
  validates :name, presence: true
end

