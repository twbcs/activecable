class TalksController < ApplicationController
  def index
    @links = Link.all
  end

  def acreate
    link = Link.new(talk: rand().to_s)
    link.save
    MessageBroadcastJob.perform_later link
  end

  private

  def link_params
    params.require(:link).permit(:name, :talk)
  end
end
