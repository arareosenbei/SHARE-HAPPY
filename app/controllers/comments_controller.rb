class CommentsController < ApplicationController
  def create
    # リクエストフォーマット確認用の
    # binding.pry
    @post = Post.find(params[:post_id])
    @comments = @post.comments
    @comment = current_user.comments.new(comment_params)
    @comment.post_id = @post.id
    @comment.save
    # # 非同期通信のため削除
    # redirect_to post_path(post)
  end

  def destroy
    Comment.find_by(id: params[:id], post_id: params[:post_id]).destroy
    @post = Post.find(params[:post_id])
    @comments = @post.comments
    # 非同期通信のため削除
    # redirect_to post_path(params[:post_id])
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
