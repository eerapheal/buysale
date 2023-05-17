class Vendor < ApplicationRecord
    has_many :product dependent: :destroy
    belong_to :users, class_name: 'User'
end
