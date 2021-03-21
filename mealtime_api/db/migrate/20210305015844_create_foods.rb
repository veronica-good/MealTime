class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :image_url
      t.string :name, index: {unique: true}
      t.text :description
      t.boolean :lactose_free, default: false
      t.boolean :vegeterian, default: false
      t.boolean :kids_friendly, default: false

      t.timestamps
    end
  end
end
