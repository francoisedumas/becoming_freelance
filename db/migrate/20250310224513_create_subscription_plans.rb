class CreateSubscriptionPlans < ActiveRecord::Migration[7.1]
  def change
    create_table :subscription_plans do |t|
      t.string :name
      t.text :description
      t.integer :price, default: 0
      t.integer :duration, default: 1

      t.timestamps
    end
  end
end
