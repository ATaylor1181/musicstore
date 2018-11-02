class AddExtraFieldsToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :sell_internationally, :boolean, :default => false
    add_column :products, :date_sold, :datetime
  end
end
