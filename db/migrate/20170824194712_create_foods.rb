class CreateFoods < ActiveRecord::Migration[5.1]
  def change
    create_table :foods do |t|
      t.references :fridge, foreign_key: true
      t.string :name
      t.integer :weight_in_pounds
      t.boolean :vegan

      t.timestamps
    end
  end
end
