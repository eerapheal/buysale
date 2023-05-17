class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.integer :vendor_id
      t.integer :category_id

      t.timestamps
    end
  end
end
