class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @rambles = @user.rambles
  end
end
