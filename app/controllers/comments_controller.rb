class CommentsController < ApplicationController
  before_action :authenticate_user!, only: :new

 def index
  @comments = Comment.where(uploader_id: params[:uploader_id])
  @upload_file = UploadFile.find(params[:uploader_id])
 end

  def new
    @upload_file = UploadFile.find(params[:upload_file.id])
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(create_params)
    redirect_to controller: :comments, action: :index
  end


 private
  def create_params
   params.require(:comment).permit(:nickname, :rate, :comments).merge(uploader_id: params[:uploader_id])
  end

end