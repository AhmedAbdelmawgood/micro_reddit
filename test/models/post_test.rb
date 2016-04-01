require 'test_helper'

class PostTest < ActiveSupport::TestCase
  setup do 
  	@post = Post.new(user_id: 1, title: 'the first', body:'Alot of texts here' )
  end
  
end
