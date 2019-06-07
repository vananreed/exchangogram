class Post < ApplicationRecord
  belongs_to :user

  validates_presence_of :photo, :caption, :user

  mount_uploader :photo, PhotoUploader
end
