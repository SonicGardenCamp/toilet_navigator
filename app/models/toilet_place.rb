class ToiletPlace < ApplicationRecord
  belongs_to :user
  
  validates :name, presence: true
  validates :address, presence: true
  validates :longitude, presence: true, numericality: { only_integer: true }
  validates :latitude,  presence: true, numericality: { only_integer: true }
end
