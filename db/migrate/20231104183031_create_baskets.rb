class CreateBaskets < ActiveRecord::Migration[6.1]
  def change
    create_table :baskets do |t|
      t.float :total_prize, default: 0
      t.belongs_to :user, foreign_key: true, index: { unique: true}
      t.timestamps
    end
  end
end
