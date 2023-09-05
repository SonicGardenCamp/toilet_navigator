class ToiletPlace < ApplicationRecord
  belongs_to :user
  has_many :reviews
  
  geocoded_by :address
  before_validation :geocode, if: :address_changed?
  
  validates :name, presence: true
  validates :address, presence: true
  validate :geolocation_present
  
  scope :default_order, -> { order(id: :asc) }

  private

  def geolocation_present
    if longitude.nil? || latitude.nil?
      errors.add(:base, "正しい住所または名称を入力してください")
    end
  end
end
