class AddPaidContentToLesson < ActiveRecord::Migration[7.1]
  def change
    add_column :lessons, :paid_content, :boolean, default: true
  end
end
