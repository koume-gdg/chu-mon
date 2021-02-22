class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :menu, foreign_key: true, null: false
      t.timestamps
    end
  end
end
