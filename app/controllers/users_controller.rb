class UsersController < ApplicationController

  def show
    @workouts = Workout.where("user_id= ?",current_user.id)
  end

end
