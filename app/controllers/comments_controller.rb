class CommentsController < ApplicationController
    def create
        comment = Comment.new
        comment.post_id = params[:post_id]
        comment.content = params[:content]
        comment.save
        redirect_to root_path
    end
end
