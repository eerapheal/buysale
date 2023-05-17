class Vendor < ApplicationRecord

    belong_to :users, class_name: 'User'
    has_many :product dependent: :destroy, class_name: 'Product'
end
