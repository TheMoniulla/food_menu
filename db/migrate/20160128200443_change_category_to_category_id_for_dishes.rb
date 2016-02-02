class ChangeCategoryToCategoryIdForDishes < ActiveRecord::Migration
  def change
    remove_column :dishes, :categories, :string
    add_column :dishes, :category_id, :integer
  end
end
