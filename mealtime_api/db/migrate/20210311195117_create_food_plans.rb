class CreateFoodPlans < ActiveRecord::Migration[6.1]
  def change
    create_table :food_plans do |t|
      t.string :quantity
      t.references :food, null: false, foreign_key: true
      t.references :plan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
