class AddSportToWorkouts < ActiveRecord::Migration
  def change
    add_reference :workouts, :sport, index: true 
  end
end
