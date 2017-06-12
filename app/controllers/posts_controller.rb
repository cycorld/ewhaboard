class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :edit]
  
  def index
    @posts = Post.order(id: :desc).all
  end
  
  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
  end
  
  private
  
  def post_params
    params.require(:post).permit([:title, :board_id, :content])
  end
end
