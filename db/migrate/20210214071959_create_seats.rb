class CreateSeats < ActiveRecord::Migration[6.0]
  def change
    create_table :seats do |t|
      t.references :order, foreign_key: true
      t.integer :seat, null: false


      t.timestamps
    end
  end
end
