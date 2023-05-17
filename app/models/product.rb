class Product < ApplicationRecord

    has_many :reviews, dependent: :destroy
    has_many :orders, dependent: :destroy
    belong_to :vendors, dependent: :destroy, class_name: 'Vendor'
    belong_to :categories, dependent: :destroy, class_name: 'Category'

end
