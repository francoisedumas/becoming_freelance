class CreateUserExercises < ActiveRecord::Migration[7.1]
  def change
    create_table :user_exercises do |t|
      t.references :user, null: false, foreign_key: true
      t.references :exercise, null: false, foreign_key: true
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
