class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.references :vendor, null: false, foreign_key: { to_table: :vendors }
      t.references :subcategory, null: false, foreign_key: { to_table: :subcategories, on_delete: :cascade }
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end


