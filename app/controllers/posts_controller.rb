class PostsController < ApplicationController
  def index
    @posts = Post.order(id: :desc).all
  end
  
  def create
    post = Post.new
    post.title = params[:title]
    post.content = params[:content]
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
