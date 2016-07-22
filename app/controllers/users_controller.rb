class UsersController < ApplicationController

  def show
  @upload_file = current_user.upload_file.page(params[:page]).per(5).order("created_at DESC")

    end
end
