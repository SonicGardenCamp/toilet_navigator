class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :toilet_places
  has_many :reviews

  def self.ransackable_attributes(auth_object = nil)
    %w(name email)
  end
end
