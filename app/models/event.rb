class Event < ApplicationRecord
  belongs_to :admin
  has_many :dogs
end
