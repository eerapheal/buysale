class Review < ApplicationRecord
    belong_to :users,  dependent: :destroy, class_name: 'User'
    belong_to :products, dependent: :destroy, class_name: 'Product'
    
end
