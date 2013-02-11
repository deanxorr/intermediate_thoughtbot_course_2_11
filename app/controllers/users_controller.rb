class UsersController < ApplicationController
  def show
    @dashboard = Dashboard.new(User.find(params[:id]))
  end
end