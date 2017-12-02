class Course < ApplicationRecord
  has_many :offerings, dependent: :destroy

  mount_uploader :thumbnail, ThumbnailUploader
end
