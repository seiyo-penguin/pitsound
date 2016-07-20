class MusicController < ApplicationController
    skip_before_filter :verify_authenticity_token

  def index

  end

  def create
     # json_request = JSON.parse(request.body.read)
     # binding.pry

    Music.create(music_params)
    # @music = Music.find(music_params[:uid])
  end

  private
  def music_params
    params.permit(:uid)
  end

end