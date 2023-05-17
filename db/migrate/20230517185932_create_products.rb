class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.integer :vendor_id
      t.integer :category_id
      t.references :vendor_id, null: false, foreign_key:  {to_table: :vendors}
      t.references :category_id, null: false, foreign_key:  {to_table: :categories}

      t.timestamps
    end
  end
end
