class RambleLikesController < ApplicationController
  def create
    @ramble = Ramble.find(params[:id])
    like = current_user.like @ramble
    redirect_to @ramble
  end

  def destroy
    @ramble = Ramble.find(params[:id])
    current_user.unlike @ramble
    redirect_to @ramble
  end
end
