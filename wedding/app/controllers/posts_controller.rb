class PostsController < ApplicationController
  before_action :find, only: %i[show edit update destroy]

  def index
    @posts = Post.all
  end

  def show
    @comment = Comment.new
    @comments = @post.comments
    @user = @post.user
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @places = Place.all
    if @post.save
      redirect_to posts_path
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def edit; end

  def update
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  # before_actionで設定
  def find
    @post = Post.find(params[:id])
  end

  # ストロングパラメーター
  def post_params
    params.require(:post).permit(:title, :body, :image, :place_id)
  end
end
