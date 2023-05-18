class Order < ApplicationRecord
    has_many :product, dependent: :destroy
    belongs_to :user, dependent: :destroy, class_name: 'User'
end
