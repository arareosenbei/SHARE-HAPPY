class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  attachment :image
  
  has_many :posts, dependent: :destroy
  has_many :places
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :reviews, dependent: :destroy
  
  # 文字数制限も
  validates :password, presence: true
  validates :email, presence: true
  validates :name, presence: true
end
