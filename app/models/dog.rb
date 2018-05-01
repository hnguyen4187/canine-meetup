class Dog < ApplicationRecord
  belongs_to :user
<<<<<<< HEAD
  
=======
  has_and_belongs_to_many :events
>>>>>>> 1c39381258154e0edacabe316a01e4a185596886
  mount_uploader :avatar, AvatarUploader
end
