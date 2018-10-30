class AddCategoryToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :category, :string
    add_column :products, :subcategory, :string
    add_column :products, :city, :string
    add_column :products, :state, :string
  end
end
