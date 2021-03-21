class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :ingredients
      t.float :two
      t.float :four
      t.string :measure
      t.references :food, foreign_key: true

      t.timestamps
    end
  end
end
