class Subject < ActiveRecord::Base
  has_many :scores, :as => :scoreable
end