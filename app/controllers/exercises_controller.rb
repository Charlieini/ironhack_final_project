class ExercisesController < ApplicationController
  before_action :authenticate_user!

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new exercise_params
    if @exercise.save
      flash[:notice] = "Exercise created!"
      redirect_to "/workouts/#{@exercise.workout_id}/edit"
    else
      flash[:alert] = "Workout not saved"
      redirect_to "/home"
    end
  end

  def destroy
    @exercise = Exercise.find(params[:id])
    @workout = Workout.find(@exercise.workout_id)
    @exercise.destroy
    flash[:alert] = "Exercise deleted successfully"
    redirect_to edit_workout_path(@workout)
  end

  def edit
    @exercise = Exercise.find(params[:id])
    @workout = Workout.find(@exercise.workout.id)
  end

  def update
    @exercise = Exercise.find(params[:id])
    if @exercise.update_attributes exercise_params
      redirect_to "/workouts/#{@exercise.workout_id}/edit"
    end
  end

  private

  def exercise_params
        params.require(:exercise).permit(:name, :explanation, :workout_id, :trainer_id, :exercise_type_id)
  end

end
