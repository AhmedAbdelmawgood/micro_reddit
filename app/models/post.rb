class Post < ActiveRecord::Base
belongs_to :user  
has_many :comments 
has_many :sub_comments, through: :comments
validates :title, presence: true 
validates :body, presence: true 
end
