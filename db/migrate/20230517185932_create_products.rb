class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.references :vendor, null: false, foreign_key:  {to_table: :vendors}
      t.references :category, null: false, foreign_key:  {to_table: :categories}
      t.references :subcategory, null: false, foreign_key:  {to_table: :subcategories}
      t.string :name
      t.decimal :price
      t.integer :vendors

      t.timestamps
    end
  end
end
