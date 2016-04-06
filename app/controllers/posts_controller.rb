class PostsController < ApplicationController
	def new 
		categories
		@post = Post.new
	end
	def create 
		@post = Post.new(param_white)
		if @post.save 
			redirect_to post_path(@post)
		else
			categories
			render :new
		end
	end
	
	def show 
		@post = Post.find(params[:id])
	end
	def edit  
		@post = Post.find(params[:id])
		categories 
	end
	def update 
		@post = Post.find(params[:id])
		if @post.update(param_white)
			redirect_to post_path(@post)
		else
			categories 
			render :new 
		end
	end
	private 
	def categories 
		@category = Category.all.map{|cat| [cat.name,cat.id]}
	end
	def param_white
		params.require(:post).permit(:title, :body, :user_id, :category_id)
	end
end
