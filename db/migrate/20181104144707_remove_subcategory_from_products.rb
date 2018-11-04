class RemoveSubcategoryFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :subcategory, :string
  end
end
