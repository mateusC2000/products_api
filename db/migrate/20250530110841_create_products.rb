class CreateProducts < ActiveRecord::Migration[7.2]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.string :sku

      t.timestamps
    end

    add_index :products, 'LOWER(sku)', unique: true, name: 'index_products_on_lower_sku'
  end
end
