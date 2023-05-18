class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

        #  has_many :categories, foreign_key: :user_id, dependent: :destroy
         has_many :review, dependent: :destroy
         has_many :product, dependent: :destroy
         has_many :order, dependent: :destroy
         has_one :vendor, dependent: :destroy
         validates :name, :email, :password, presence: true
end
