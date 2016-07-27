class MusicController < ApplicationController
    skip_before_filter :verify_authenticity_token

  def index
    @musics = Music.all

    # @musics = Music.find_by(uid: "")

  end

  def create

# @music = Music.where(uid: music_params)
  # unless @music
    @music = Music.create(music_params)
    @upload_file = UploadFile.where(songtitle: uploader_params)
  end

  def new
  end

  def show
  end

  def search
  @music = Music.where(songtitle: params[:keyword]).limit(20)
  end

  private
  def music_params
    params.permit(:uid, :songtitle)
  end
  def uploader_params
    params.permit(:songtitle)
  end


end