class Event < ApplicationRecord
  belongs_to :admin
  has_many :dog_events, dependent: :destroy
  has_many :dogs, :through => :dog_events
end
