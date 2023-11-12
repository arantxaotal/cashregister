class AddProductBaskets < ActiveRecord::Migration[6.1]
  def change
    create_table :product_baskets do |t|
      t.references :product, index: true, foreign_key: { to_table: :products }
      t.references :basket, index: true, foreign_key: { to_table: :baskets }
      t.integer :amount, default: 0
      t.timestamps
    end
  end
end
