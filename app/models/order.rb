class Order < ApplicationRecord
    has_many :product, dependent: :destroy, class_name: 'Product'
    belong_to :user, dependent: :destroy, class_name: 'User'
end
