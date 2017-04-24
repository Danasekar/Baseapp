class UsersController < ApplicationController
 
def index
end
	
def new
	@user = User.new
end

def create
	params.permit!

	@user = User.new(params[:user])
	if @user.save
		redirect_to :controller=>'users',:action=>'index'
	else
		render "new"
	end
end

end	