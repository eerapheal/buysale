class Category < ApplicationRecord
    has_many :subcategories
    has_many :products

    validates :name, presence: true 
end
