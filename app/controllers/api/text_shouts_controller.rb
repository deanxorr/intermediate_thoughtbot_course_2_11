class Api::TextShoutsController < ApplicationController
  respond_to :json
  def create
    shout = build_shout
    shout.save
    respond_with shout
  end

  private

  def build_shout
    text_shout = TextShout.new(params[:text_shout])
    User.first.shouts.build(content: text_shout)
  end
end