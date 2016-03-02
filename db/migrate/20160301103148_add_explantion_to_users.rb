class AddExplantionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :explanation, :string
  end
end
