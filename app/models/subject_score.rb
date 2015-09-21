class SubjectScore < ActiveRecord::Base
  belongs_to :subject
  belongs_to :score
end