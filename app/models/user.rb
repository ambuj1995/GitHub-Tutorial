class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    
  has_one :profile, dependent: :destroy
  has_many :comments
  has_many :likes
  has_many :posts

  after_create :set_profile

  private

  def set_profile
    build_profile.save(validate: false)    
  end 
end
