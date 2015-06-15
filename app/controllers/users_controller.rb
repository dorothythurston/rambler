class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @rambles = @user.rambles.paginated(params[:page], 3)
  end

  def index
    @users = User.all.paginated(params[:page], 10)
  end
end
