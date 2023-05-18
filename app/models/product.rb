class Product < ApplicationRecord
    belongs_to :vendor, dependent: :destroy, class_name: 'Vendor'
    belongs_to :subcategory, dependent: :destroy, class_name: 'Subcategory'
    has_one :category, through: :subcategory
    has_many :reviews, dependent: :destroy
    has_many :orders, dependent: :destroy
  end
  