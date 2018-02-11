class Lesson < ApplicationRecord
  belongs_to :section
  mount_uploader :picture, PictureUploader
end
