class Dog < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :events
 master
  mount_uploader :avatar, AvatarUploader
end
