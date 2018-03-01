class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.integer :department_id
      t.boolean :selected, default: false
      t.timestamps
    end
  end
end
