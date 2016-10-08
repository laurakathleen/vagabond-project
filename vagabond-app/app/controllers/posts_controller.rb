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
    @dog = @current_user
  end

  def edit
    @post = Post.find(params[:post_id])
  end

  def update
    @post = Post.find(params[:post_id])
    if @post.update(post_params)
      redirect_to post_path(@post)
    end
  end

  def delete
  end

  private
  def post_params
    params.require(:post).permit(:user_id, :city_id, :post_title, :post_content)
  end
end
