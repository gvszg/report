class Score < ActiveRecord::Base
  belongs_to :student
  belongs_to :scoreable, :polymorphic => true
end