class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.decimal :price, precision: 7, scale: 2, null: false
      t.timestamps
    end
  end
end
