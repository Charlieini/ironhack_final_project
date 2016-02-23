class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :name
      t.datetime :date
      t.integer :rating
      t.references :trainer, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
