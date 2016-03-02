class AddTypeToExercises < ActiveRecord::Migration
  def change
    add_reference :exercises, :exercise_type, index:true
  end
end
