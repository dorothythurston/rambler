class DashboardsController < ApplicationController
  def show
    @ramble = Ramble.new
    @rambles = Ramble.all
  end
end
