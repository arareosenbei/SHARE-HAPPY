class UsersController < ApplicationController
  before_action :find, only: [:show, :edit, :update]
  
  def index 
    @users = User.all
  end
  
  def show
  end
  
  def edit
  end

  def update
    @user.update(user_params)
    redirect_to user_path(@user)
    logger.debug @user.errors.inspect 
  end
  
  private
  # before_actionで設定
  def find
    @user = User.find(params[:id])
  end
  
  # ストロングパラメーター
  def  user_params
  	params.require(:user).permit(:name, :introduction, :image)
  end

  
end
