class Art < ApplicationRecord
  mount_uploader :image, ImageUploader
end
