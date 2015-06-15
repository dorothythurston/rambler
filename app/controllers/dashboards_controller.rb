class DashboardsController < ApplicationController
  def show
    @ramble = Ramble.new
    @rambles = Ramble.recent.paginated(params[:page], 3)
  end
end
