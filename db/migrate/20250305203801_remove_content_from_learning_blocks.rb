class RemoveContentFromLearningBlocks < ActiveRecord::Migration[7.1]
  def up
    remove_column :learning_blocks, :content, :text
    remove_column :exercises, :description, :text
    remove_column :resources, :description, :text
  end

  def down
    add_column :learning_blocks, :content, :text
    add_column :exercises, :description, :text
    add_column :resources, :description, :text
  end
end
