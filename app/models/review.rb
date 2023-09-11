class Review < ApplicationRecord
  belongs_to :user
  belongs_to :toilet_place
  
  validates :content, presence: true
  
  scope :default_order, -> { order(id: :asc) }
end
