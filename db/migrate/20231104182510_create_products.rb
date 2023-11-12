class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :product_code
      t.string :name
      t.float :prize, default: 0
      t.timestamps
    end
  end
end
