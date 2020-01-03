class User < ApplicationRecord
  has_many :articles
  has_many :comments, dependent: :destroy
  has_one :profile
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  def name_or_email
   self.name.present? && self.last_name.present? ? "#{self.name} #{self.last_name}".capitalize : self.email.capitalize
  end
end
