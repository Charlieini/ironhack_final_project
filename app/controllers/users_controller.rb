class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @workouts = Workout.where("user_id= ?",current_user.id)
  end

end
