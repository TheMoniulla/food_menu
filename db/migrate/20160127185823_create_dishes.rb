class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :category
      t.text :recipe
      t.timestamps
    end
  end
end
