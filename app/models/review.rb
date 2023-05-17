class Review < ApplicationRecord
    belong_to :users,  dependent: :destroy
    belong_to :products, dependent: :destroy
    
end
