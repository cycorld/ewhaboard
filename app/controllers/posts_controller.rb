class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :edit]
  
  def index
    @posts = Post.order(id: :desc).all
  end
  
  def create
    post = Post.new
    post.title = params[:title]
    post.content = params[:content]
    post.user_id = current_user.id
    post.board_id = params[:board_id]
    post.save
    redirect_to root_path
  end

  def show
  end

  def new
  end

  def edit
  end
end
