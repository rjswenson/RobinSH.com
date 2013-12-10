class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, notice: "Great Success"
    else
      render action: 'new'
    end
  end

  def update
    if @post.update(post_params)
      redirect_to posts_path, notice: "Post updated"
    else
      render action: 'edit'
    end
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def destroy
    @post.destroy
    redirect_to posts_path, notice: "Post Deleted"
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :published)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
