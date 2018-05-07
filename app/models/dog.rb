class Dog < ApplicationRecord
  belongs_to :user
  has_many :dog_events, dependent: :destroy
  has_many :events, :through => :dog_events
  mount_uploader :avatar, AvatarUploader
end
