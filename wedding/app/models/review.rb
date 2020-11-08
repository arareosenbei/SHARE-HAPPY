class Review < ApplicationRecord
  
  belongs_to :user
  belongs_to :place
  
  validates :title, presence: true
  validates :body, presence: true
  
end
