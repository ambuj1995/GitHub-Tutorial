class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
<<<<<<< HEAD
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    
  has_one :profile, dependent: :destroy
  has_many :posts
  has_many :comments
  has_many :likes, as: :imageable
  
=======
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable
                 
  has_one :profile, dependent: :destroy
>>>>>>> cfb847500bd5f83b7cd2c0e634a3f79cb74b9616

  after_create :set_profile

  private

  def set_profile
<<<<<<< HEAD
    build_profile.save(validate: false)    
  end 
end
=======
    create_profile    
  end 
end

>>>>>>> cfb847500bd5f83b7cd2c0e634a3f79cb74b9616
