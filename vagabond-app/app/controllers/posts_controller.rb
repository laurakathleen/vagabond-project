class PostsController < ApplicationController
  def index
  end

  def show
    @post = Post.find_by_id(params[:id])
    @user = @post.user
  end

  def new
  end

  def edit
  end

  def delete
  end
end
