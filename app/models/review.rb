class Review < ApplicationRecord
    belongs_to :users,  dependent: :destroy, class_name: 'User'
    belongs_to :products, dependent: :destroy, class_name: 'Product'
    
end
