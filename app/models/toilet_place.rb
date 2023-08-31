class ToiletPlace < ApplicationRecord
  belongs_to :user
  
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  
  validates :name, presence: true
  validates :address, presence: true
  
  scope :default_order, -> { order(id: :asc) }
end
