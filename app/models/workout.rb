class Workout < ActiveRecord::Base
  belongs_to :trainer
  has_many :exercises
  has_many :comments
end
