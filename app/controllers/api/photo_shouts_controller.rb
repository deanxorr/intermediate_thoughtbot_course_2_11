class Api::PhotoShoutsController < ApplicationController
  def create
    shout = build_shout
    if shout.save
      redirect_to dashboard_path, notice: t('shouted')
    else
      redirect_to dashboard_path, alert: t('shout_failed')
    end
  end

  private

  def build_shout
    photo_shout = PhotoShout.new(params[:photo_shout])
    current_user.shouts.build(content: photo_shout)
  end
end