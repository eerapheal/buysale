class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :rating
      t.text :comment
      t.references :user_id, null: false, foreign_key:  {to_table: :users}
      t.references :product_id, null: false, foreign_key:  {to_table: :products}
      t.timestamps
    end
  end
end
