class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.belongs_to :user
      t.date :due_date, null: false
      t.timestamps
    end
  end
end
