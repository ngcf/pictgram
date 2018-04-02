class CommentsController < ApplicationController
  def create
    @comment = Comment.new
    comment.user_id = current_user_id
    comment.topic_id = params[:topic_id]
    if comment.save
      redirect_to topics_path, notice: 'コメントを投稿しました'
    else
      redirect_to topics_path, notice: 'コメントの投稿に失敗しました'
    end
  end
end


  def index
  end
end
