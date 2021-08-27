class BoardController < ApplicationController
  def index
		@posts = Post.all
  end
	def create
		title1 = params[:title]
		content1 = params[:content]
		Post.create(title: title1, content: content1)
		redirect_to '/board'
  end
	def edit
		@post = Post.find(params[:id])
  end
	def update
		@post = Post.find(params[:id])
		@post.title = params[:title]
		@post.content = params[:content]
		@post.save
		redirect_to '/board'
  end
	def delete
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to '/board'
  end
end
