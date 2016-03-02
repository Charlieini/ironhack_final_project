class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :explanation
      t.references :workout, index: true
      t.references :trainer, index: true

      t.timestamps null: false
    end
  end
end
