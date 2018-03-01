class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.belongs_to :user, foreign_key: true
      t.integer :amount
      t.string :item_name
      t.float :item_price

      t.timestamps
    end
  end
end
