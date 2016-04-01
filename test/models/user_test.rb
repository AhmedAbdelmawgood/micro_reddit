require 'test_helper'

class UserTest < ActiveSupport::TestCase
	setup do 
		@user = User.new(name:'Ahmed Samir', email:'mody.ahmed12@yahoo.com',
						 email_confirmation: 'mody.ahmed12@yahoo.com', gender:'Male',
						 country: 'Egypt',age: 18,username:'Mody1350')
	end
	test 'should not be valid' do 
		assert_not @user.valid?
	end
	test 'should be valid' do 
		@user.password = '@somethingNew'
		@user.password_confirmation = '@somethingNew'
		assert @user.valid?, @user.errors.messages
	end
	test 'password doesn\'t match' do 
		@user.password = '@something'
		@user.password_confirmation = '@some'
		assert_not @user.valid?
	end
	
end
