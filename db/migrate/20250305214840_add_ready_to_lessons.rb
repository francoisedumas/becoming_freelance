class AddReadyToLessons < ActiveRecord::Migration[7.1]
  def change
    add_column :lessons, :ready, :boolean, default: false
  end
end
