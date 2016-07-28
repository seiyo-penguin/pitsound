class UploaderController < ApplicationController
  def index
    @upload_file = UploadFile.where('songtitle LIKE(?)', "%#{params[:songtitle]}%")
    # binding.pry

  end

  def form
    # binding.pry
  end

  def show
    @uploader = UploadFile.find(params[:uploader_id])
  end



  def search
    @upload_file = UploadFile.where(songtitle: params[:keyword]).limit(20)

  end

  def upload
# binding.pry

      # songtitle = "%#{params[:songtitle]}%"
      @upload_file = current_user.upload_files.new( params.require(:upload_file).permit(:title, :file, :songtitle, :music_id) )
      # @upload_file = UploadFile.new( params.require(:upload_file).permit(:title, :file, :songtitle) )
      @upload_file.save
      @music = Music.find(@upload_file.music_id)

      redirect_to music_path(@music)
  end

# params.require(:upload_file).merge(user_id: current_user.id)

  # def download
  #   @upload_file = UploadFile.find(params[:id].to_i)
  #   filepath = @upload_file.file.current_path
  #   stat = File::stat(filepath)
  #   send_file(filepath, :filename => @upload_file.file.url.gsub(/.*\//,''), :length => stat.size)
  # end


end
