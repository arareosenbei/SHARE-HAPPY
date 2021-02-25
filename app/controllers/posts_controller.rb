class PostsController < ApplicationController
  before_action :login_check, only: [:show, :new, :edit, :update, :destroy]
  before_action :find, only: [:show, :edit, :update, :destroy]
  

  def index
    @posts = Post.all.page(params[:page]).per(9)
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
  def login_check
    unless user_signed_in?
      flash[:alert] = "ログインしてください"
      redirect_to user_session_path
    end
  end

  def find
    @post = Post.find(params[:id])
  end

  # ストロングパラメーター
  def post_params
    params.require(:post).permit(:title, :body, :image, :place_id)
  end
end
