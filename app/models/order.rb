class Order < ApplicationRecord
    has_many :product, dependent: :destroy
    belong_to :user, dependent: :destroy
end
