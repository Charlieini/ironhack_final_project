class Users_trainer < ActiveRecord::Base
  belongs_to :trainer
  belongs_to :user
end
