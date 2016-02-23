class CreateUsersTrainers < ActiveRecord::Migration
  def change
    create_table :users_trainers do |t|
      t.references :user, index: true
      t.references :trainer, index: true
      t.timestamps null: false
    end
  end
end
