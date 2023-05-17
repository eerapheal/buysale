class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|

      t.references :user, null: false, foreign_key:  {to_table: :users}
      t.references :product, null: false, foreign_key:  {to_table: :products}
      t.integer :rating
      t.text :comment
      t.timestamps
    end
  end
end
