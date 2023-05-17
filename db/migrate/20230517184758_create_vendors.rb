class CreateVendors < ActiveRecord::Migration[7.0]
  def change
    create_table :vendors do |t|
      t.string :name
      t.references :user_id, null: false, foreign_key:  {to_table: :users}

      t.timestamps
    end
  end
end
