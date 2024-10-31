class UserController < ApplicationController
	def index
		#@user = User.first
	end

    def new
    	
    end

	def create
    @user = User.new(user_params)
  
    if @user.save
    	puts "111111111111111111111111111111111111111111"
      redirect_to @user, notice: 'User was successfully created.'
    else
    	puts "2222222222222222222222222222222222222222"
      render :new
    end
  end

  def show
  	@user = User.find(params[:id])
  end

   private

  def user_params
    params.require(:user).permit(:profile_picture, :other_attributes)
  end

end
