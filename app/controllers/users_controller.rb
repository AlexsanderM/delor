class UsersController < ApplicationController
  def new
  	@user=User.new
  	@time=Time.now
  end
  def create
  	@time=Time.now
  	@user=User.new(user_params)
  	if @user.save
      
  	else
  		render 'new'
  	end
  end

  def show
    @user = User.find(params[:id])
  end

private

  def user_params
  		params.require(:user).permit(:name, :email , :password, 
  		:password_confirmation)
    end
end
