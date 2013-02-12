class ApplicationController < ActionController::Base
  include Clearance::Authentication
  protect_from_forgery

  def current_user
    @_current_user ||= (super || Guest.new)
  end

  def signed_in?
    !current_user.is_a?(Guest)
  end
end