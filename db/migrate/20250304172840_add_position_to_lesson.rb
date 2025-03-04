class AddPositionToLesson < ActiveRecord::Migration[7.1]
  def change
    add_column :lessons, :position, :integer
    Lesson.order(:updated_at).each.with_index(1) do |lesson, index|
      lesson.update_column :position, index
    end
  end
end
