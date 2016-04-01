require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  
  setup do 
  	@comment = Comment.new(body:'some text here', user_id: 1, post_id: 1)
  end
  test 'not valid case' do 
  	assert_not @comment.valid?
  end
  test 'should not be valid' do 
  	@comment.user_id = 5
  	assert_not @comment.valid?
  end
end
