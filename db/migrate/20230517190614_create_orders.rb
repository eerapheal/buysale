class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :quantity
      t.decimal :total_price
      t.references :user_id, null: false, foreign_key:  {to_table: :users}
      t.references :product_id, null: false, foreign_key:  {to_table: :products}
      

      t.timestamps
    end
  end
end
