class Workout < ActiveRecord::Base
  belongs_to :trainer
  has_many :exercises
end
