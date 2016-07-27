class UploadFile < ActiveRecord::Base
  mount_uploader :file, UploadFileUploader
  belongs_to :music
  belongs_to :user
end
