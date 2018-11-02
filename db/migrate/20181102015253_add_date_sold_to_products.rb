class AddDateSoldToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :date_sold, :date
  end
end
