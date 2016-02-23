class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :kind
      t.string :duration
      t.string :pace
      t.string :distance
      t.references :workout, index: true
      t.references :trainer, index: true

      t.timestamps null: false
    end
  end
end
