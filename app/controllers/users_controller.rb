class UsersController < ApplicationController

  def show
  @upload_file = current_user.upload_files.page(params[:page]).per(5).order("created_at DESC")
  @music_id = params[:music_id]
  end
end
