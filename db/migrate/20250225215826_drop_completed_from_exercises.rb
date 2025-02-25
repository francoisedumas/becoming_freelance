class DropCompletedFromExercises < ActiveRecord::Migration[7.1]
  def up
    remove_column :exercises, :completed
  end

  def down
    add_column :exercises, :completed, :boolean
  end
end
