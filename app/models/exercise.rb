class Exercise < ActiveRecord::Base
  belongs_to :workout
  belongs_to :trainer
  has_one :exercise_type
end
