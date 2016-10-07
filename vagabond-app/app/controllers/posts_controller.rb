class PostsController < ApplicationController
  def create
    @post = Post.create(post_params)
    redirect_to root_path
  end

  def show
    @post = Post.find_by_id(params[:id])
    @user = @post.user
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def delete
  end

  private
  def post_params
    params.require(:post).permit(:user_id, :city_id, :post_title, :post_content)
  end
end
