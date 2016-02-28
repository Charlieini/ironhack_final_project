class Workout < ActiveRecord::Base
  belongs_to :trainer
  has_many :exercises
  has_many :comments
  has_many :sports
end
