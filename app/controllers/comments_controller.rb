class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @workout = Workout.find params[:workout_id]
    @comment = @workout.comments.new comment_params
    if @comment.save
      flash[:notice] = "Comment created!"
      redirect_to workout_path(@workout)
    else
      flash[:alert] = "Comment not saved"
      redirect_to workout_path(@workout)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :workout_id)
  end

end
