class Subcategory < ApplicationRecord
  belongs_to :category, dependent: :destroy, class_name: 'Category'
  has_many :products, dependent: :destroy
end