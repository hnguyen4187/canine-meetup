class DogEvent < ApplicationRecord
  belongs_to :dog
  belongs_to :event
end
