class Post < ActiveRecord::Base
	mount_uploader :bimage, BimageUploader
	belongs_to :user
end
