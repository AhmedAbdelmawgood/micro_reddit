class Comment < ActiveRecord::Base
belongs_to :user 
belongs_to :post 
has_many   :sub_comments
validates  :user, presence: true 
validates  :body, length: {minimum:5, maximum:240 }
end
