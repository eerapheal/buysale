class Vendor < ApplicationRecord
    belongs_to :user, dependent: :destroy, class_name: 'User'
    has_many :product, dependent: :destroy
 
    validates :name, presence: true 
    validates :description, presence: true
    validates :image, presence: true
    

end
