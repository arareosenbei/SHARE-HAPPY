class Post < ApplicationRecord
  
  attachment :image

  belongs_to :user
  belongs_to :place
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  
  validates :title, presence: true
  validates :body, presence: true
  
  # 引数で渡されたユーザidがFavoritesテーブル内に存在（exists?）するかどうかを調べる
  # 存在していればtrue、存在していなければfalseを返す
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
