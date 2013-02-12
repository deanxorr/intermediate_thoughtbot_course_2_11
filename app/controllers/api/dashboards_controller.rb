class Api::DashboardsController < ApplicationController
  respond_to :json
  def show
    @dashboard = Dashboard.new(current_user)
    respond_with @dashboard
  end
end