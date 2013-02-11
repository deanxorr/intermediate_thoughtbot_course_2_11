class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @shouts = @user.shouts.reverse_chronological
  end
end