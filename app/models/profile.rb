class Profile < ApplicationRecord
<<<<<<< HEAD
  belongs_to :user

  validates :name, :age, :gender, :city, :state, :country, :zipcode, presence: true
  validates :contact, :age, :zipcode, numericality: { only_integer: true }

    has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
=======
  has_many :photos
  belongs_to :user
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  mount_uploader :image, AvatarUploader
  mount_uploaders :avatars, AvatarUploader
  serialize :avatars, JSON
end

>>>>>>> cfb847500bd5f83b7cd2c0e634a3f79cb74b9616
