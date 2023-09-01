class ToiletPlace < ApplicationRecord
  belongs_to :user
  has_many :reviews
  
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  
  validates :name, presence: true
  validates :address, presence: true
  validate :coordinates_must_not_be_nil
  
  scope :default_order, -> { order(id: :asc) }

  private

  def coordinates_must_not_be_nil
    if latitude.nil? || longitude.nil?
      errors.add(:base, "入力された住所の座標が見つかりません")
    end
  end
end
