class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  
  def create
    @post = Post.find(params[:post_id])

    @comment = @post.comments.create(body: params[:body], user_id: current_user.id)

    # redirect_back(fallback_location: root_path)
    respond_to do |format|
      format.js
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    
    # redirect_back(fallback_location: root_path)
    respond_to do |format|
      format.js
    end
  end
end
