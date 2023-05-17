class Subcategory < ApplicationRecord
  belongs_to :category , dependent: :destroy, class_name: 'Category'
end
