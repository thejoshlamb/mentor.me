class UsersController < ApplicationController
  def index
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    session[:user_id] = user_id
    if @user.save
      redirect_to root_url, :notice => "account created!"
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def user_params
      params.require(:person).permit(:name, :email, :password, :password_confirmation)
  end
end
