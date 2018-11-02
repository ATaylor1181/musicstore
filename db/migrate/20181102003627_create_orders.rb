class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :buyer, foreign_key: {to_table: :users}
      t.references :product, foreign_key: true
      t.datetime :date_sold
      t.string :street_address
      t.string :postcode
      t.string :city
      t.string :country
      t.integer :price

      t.timestamps
    end
  end
end
