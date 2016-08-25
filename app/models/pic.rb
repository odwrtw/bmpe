class Pic < ApplicationRecord
  mount_uploader :filename, PictureUploader
  belongs_to :camera
end
