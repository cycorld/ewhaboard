class PostsController < ApplicationController
  def index
    @posts = Post.order(id: :desc).all
  end

  def show
  end

  def new
  end

  def edit
  end
end
