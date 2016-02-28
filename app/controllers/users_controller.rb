class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @workouts = Workout.where("user_id=?", current_user.id)
    if current_user.has_role? :trainer
      @trained_users = fetch_trained_users
      @workouts_as_trainer = Workout.where("trainer_id= ?", current_user.id)
    end
  end

  def index
    @trainers = []
    all_users = User.all
    all_users.each do |user|
      if user.has_role? :trainer
        @trainers << user
      end
    end
  end

  def inspect_user_workouts
    @workouts = Workout.where("user_id=? and trainer_id=?", params[:user_id], current_user.id)
  end

  private

  def fetch_trained_users
    trained_users = []
    ids = []
    fetch_user_id = Users_trainer.where("trainer_id= ?", current_user.id)
    fetch_user_id.each {|user| ids << user.user_id }
    ids.each {|id| trained_users << User.find(id)}
    trained_users
  end
end
