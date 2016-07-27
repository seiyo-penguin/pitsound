class Comment < ActiveRecord::Base
  belongs_to :upload_file
end
