class Product < ApplicationRecord
    belongs_to :vendor, dependent: :destroy, class_name: 'Vendor'
    belongs_to :subcategory, dependent: :destroy, class_name: 'Subcategory'
    has_one :category, through: :subcategory
    has_many :reviews, dependent: :destroy
    has_many :orders, dependent: :destroy

    validates :vendor_id, presence: true 
    validates :subcategory_id, presence: true 
    validates :name, presence: true 
    validates :price, presence: true 
    validates :description, presence: true 
    validates :image, presence: true 
  end
  