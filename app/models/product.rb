class Product < ApplicationRecord

    belong_to :vendors, dependent: :destroy, class_name: 'Vendor'
    belong_to :categories, dependent: :destroy, class_name: 'Category'
    belongs_to :subcategory, dependent: :destroy, class_name: 'Category'
    has_many :reviews, dependent: :destroy
    has_many :orders, dependent: :destroy
end
