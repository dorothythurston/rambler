class RamblesController < ApplicationController
  def index
    @ramble = Ramble.new
  end

  def create
    ramble = Ramble.create(ramble_params)
    redirect_to ramble
  end

  def show
    @ramble = Ramble.find(params[:id])
  end

  private

  def ramble_params
    params.require(:ramble).permit(:body)
  end
end
