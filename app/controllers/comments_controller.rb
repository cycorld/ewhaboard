class CommentsController < ApplicationController
    before_action :authenticate_user!, only: [:create]
      
    def create
        comment = Comment.new
        comment.post_id = params[:post_id]
        comment.user_id = current_user.id
        comment.content = params[:content]
        comment.save
        redirect_to root_path
    end
end
