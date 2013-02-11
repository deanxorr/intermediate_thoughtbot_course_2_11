class TextShoutsController < ApplicationController
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
    text_shout = TextShout.new(params[:text_shout])
    current_user.shouts.build(content: text_shout)
  end
end