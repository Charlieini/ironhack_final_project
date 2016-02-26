class TrainersController < ApplicationController
  before_action :authenticate_user!

  def index
    @trainers = Trainer.all
  end

  def show #split this method
    @trained_users = fetch_trained_users
    @workouts = Workout.where("trainer_id= ?", current_trainer.id)
  end

  def inspect_user_workouts
    @workouts = Workout.where("user_id=? and trainer_id=?", params[:user_id], current_trainer.id)
  end

  private

  def fetch_trained_users
    trained_users = []
    ids = []
    fetch_user_id = Users_trainer.where("trainer_id= ?", current_trainer.id)
    fetch_user_id.each {|user| ids << user.user_id }
    ids.each {|id| trained_users << User.find(id)}
    trained_users
  end

end
