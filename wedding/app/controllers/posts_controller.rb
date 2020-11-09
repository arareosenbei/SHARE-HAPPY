class PostsController < ApplicationController
    before_action :find, only: [:show, :edit, :update, :destroy]
  
  def index 
    @posts = Post.all
  end
  
  def show
  end
  
  def new
    @post = Post.new
  end
  
  def create 
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      redirect_back(fallback_location: root_path)
    end

  end 
  
  def edit
  end

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
  def  post_params
  	params.require(:post).permit(:title, :body, :image)
  end

end
