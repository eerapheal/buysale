class Product < ApplicationRecord

    has_many :reviews, dependent: :destroy
    has_many :orders, dependent: :destroy
    belong_to :categories, dependent: :destroy
    belong_to :vendors, dependent: :destroy

end
