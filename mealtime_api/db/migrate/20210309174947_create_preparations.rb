class CreatePreparations < ActiveRecord::Migration[6.1]
  def change
    create_table :preparations do |t|
      t.text :step
      t.references :food, foreign_key: true

      t.timestamps
    end
  end
end
