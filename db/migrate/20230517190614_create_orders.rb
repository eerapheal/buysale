class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key:  {to_table: :users}
      t.references :product, null: false, foreign_key:  {to_table: :products}
      t.integer :quantity
      t.decimal :total_price
      

      t.timestamps
    end
  end
end
