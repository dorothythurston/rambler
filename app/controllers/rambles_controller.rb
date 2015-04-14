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

  def destroy
    ramble = Ramble.find(params[:id])
    ramble.destroy

    redirect_to root_path, notice: "Ramble deleted"
  end

  def update
    ramble = Ramble.find(params[:id])
    ramble.update(ramble_params)
    redirect_to ramble
  end

  private

  def ramble_params
    params.require(:ramble).permit(:body)
  end
end
