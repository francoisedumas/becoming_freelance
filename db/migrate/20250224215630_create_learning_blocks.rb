class CreateLearningBlocks < ActiveRecord::Migration[7.1]
  def change
    create_table :learning_blocks do |t|
      t.references :lesson, null: false, foreign_key: true
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
