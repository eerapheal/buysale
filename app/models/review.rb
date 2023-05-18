class Review < ApplicationRecord
    belongs_to :users,  dependent: :destroy, class_name: 'User'
    belongs_to :products, dependent: :destroy, class_name: 'Product'
    
  validates :user_id, presence: true 
  validates :product_id, presence: true 
  validates :rating, presence: true 
  validates :comment, presence: true 
end
