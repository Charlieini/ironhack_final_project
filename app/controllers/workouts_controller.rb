class WorkoutsController < ApplicationController
  before_action :authenticate_user!

  def show
    @workout= Workout.find(params[:workout_id])
    @comment = @workout.comments.new params[:comment]
  end

  def new
    @workout = Workout.new
    @trained_users = []
    ids = []
    fetch_user_id = Users_trainer.where("trainer_id= ?", current_user.id)
    fetch_user_id.each {|user| ids << user.user_id }
    ids.each {|id| @trained_users << User.find(id)}
  end

  def create
    @workout = Workout.new workout_params
      if @workout.save
        flash[:notice] = "Workout created!"
        redirect_to "/workouts/#{@workout.id}/edit"
      else
        flash[:alert] = "Workout not saved"
        render "new"
      end
  end

  def edit
    @workout = Workout.find params[:id]
    @exercise = Exercise.new
    @user = User.find @workout.user_id
  end

  def update
    @workout = Workout.find params[:id]
      if @workout.update_attributes workout_params
        redirect_to(:back)
      end
  end

  private

  def workout_params
    params.require(:workout).permit(:name, :start_time, :user_id, :trainer_id, :sport_id)
  end

end
