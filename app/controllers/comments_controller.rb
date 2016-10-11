class CommentsController < ApplicationController
	def create 
		post = Post.find_by_id(params[:id])
		@comment = Comment.new(comment_params)
		@comment.post_id = post.id
		if @comment.save
			redirect_to post_path
		else
			debugger
			redirect_to post_path(@post)
		end
	end


	def show
		@comment = Comment.find_by_id(params[:id])
		@post = @comment.post
	end

	def new
		@post_id = getPostId
		@comment = Comment.new
	end

	private 
	def comment_params
		params.require(:comment).permit(:comment_content, :user_id, :post_id)
	end

end
