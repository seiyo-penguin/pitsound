class UploadFile < ActiveRecord::Base
  mount_uploader :file, UploadFileUploader
  belongs_to :music
  belongs_to :user
  has_many :comments
end
