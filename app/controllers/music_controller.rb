class MusicController < ApplicationController
    skip_before_filter :verify_authenticity_token

  def index
    @nusics = Music.all

  end

  def create


    Music.create(music_params)
         # binding.pry

  end

  def new
    end

  private
  def music_params
    params.permit(:uid)
  end

end