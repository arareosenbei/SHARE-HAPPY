class UsersController < ApplicationController
  def index 
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def ed
    @user = User.find(params[:id])
    
  end
  
  def update 
  end
  
end
