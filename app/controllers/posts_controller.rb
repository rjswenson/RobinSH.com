class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:index, :show]
  def index
    @posts = Post.paginate(:page => 1, :per_page => 2)
  end

  def show
  end

  def create
    @post = Post.new(post_params)
    authorize @post
    if @post.save
      redirect_to posts_path, notice: "Great Success"
    else
      render action: 'new'
    end
  end

  def update
    authorize @post
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
    authorize @post
  end

  def destroy
    authorize @post
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
