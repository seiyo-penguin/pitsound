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

    redirect_to "/music/#{@music.id}"

  end

  def new
    @music = Music.new
    @songtitle = params[:title]
  end

  def show

  @music = Music.find(params[:id])
  @upload_file = UploadFile.where(music_id: params[:id])
      # @uploader = UploadFile.find(params[:uploader_id])
  end

  def search
    if Music.where(songtitle: params[:songtitle]).any?
     @music = Music.where(songtitle: params[:songtitle]).limit(20)
   else
     @music =Music.new
     redirect_to new_music_path(@music, title: params[:songtitle])
   end

  end

  private
  def music_params
    params.require(:music).permit(:uid, :songtitle, :id)
  end
  def uploader_params
    params.permit(:music_id)
  end


end