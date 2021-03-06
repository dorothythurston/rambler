class RamblesController < ApplicationController
  def index
    @ramble = Ramble.new
    @rambles = Ramble.paginated(params[:page], 5)
  end

  def create
    ramble = current_user.rambles.create(ramble_params)
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

  private

  def ramble_params
    params.require(:ramble).permit(:body)
  end
end
