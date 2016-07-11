class ChannelsController < ApplicationController
  def index
    @channels = Channel.all
  end

  def show
    @channel = Channel.find(params[:id])
    @channel_author = @channel.user
    @posts = @channel_author.posts
  end
end
