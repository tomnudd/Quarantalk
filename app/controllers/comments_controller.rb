class CommentsController < ApplicationController
    skip_before_action :authenticate_user!, only: [:create]

    def destroy
        @post = Post.find(params[:post_id])
        @comment = @post.comments.find(params[:id])
        @comment.destroy
        redirect_to post_path(@post)
    end
    
    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(comment_params)
        redirect_to post_path(@post)
    end

    private def comment_params
        params.require(:comment).permit(:username, :body)
    end
end
