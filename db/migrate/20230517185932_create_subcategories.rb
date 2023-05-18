class CreateSubcategories < ActiveRecord::Migration[7.0]
  def change
    create_table :subcategories do |t|
      t.string :name
      t.references :category, null: false, foreign_key: {to_table: :categories, on_delete: :cascade}

      t.timestamps
    end
  end
end
