class CommentsController < ApplicationController
  before_action :authenticate_user!, only: :new
  def new
    @upload_file = UploadFile.find(params[:uploader_id])
    @comment = Comment.new
    end

  def create
    Comment.create(create_params)
    redirect_to controller: :comments, action: :index
end


private
def create_params
  params.require(:comment).permit(:nickname, :rate, :comment).merge(uploader_id: params[:uploader_id])