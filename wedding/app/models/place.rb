class Place < ApplicationRecord
  
  attachment :image
  
  belongs_to :user
  has_many :posts
  has_many :reviews, dependent: :destroy
  
  validates :name, presence: true
  validates :introduction, presence: true
  validates :address, presence: true
  validates :postal_code, presence: true

end
