class Order < ApplicationRecord
    has_many :product, dependent: :destroy
    belongs_to :user, dependent: :destroy, class_name: 'User'

    validates :user_id, presence: true 
    validates :product_id, presence: true 
    validates :quantity, presence: true 
    validates :total_price, presence: true 

    def calculate_total_price
        self.total_price = products.sum(:price) * quantity
      end
end
