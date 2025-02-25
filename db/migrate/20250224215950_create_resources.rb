class CreateResources < ActiveRecord::Migration[7.1]
  def change
    create_table :resources do |t|
      t.references :lesson, null: false, foreign_key: true
      t.integer :resource_type
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
