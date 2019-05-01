class Profile < ApplicationRecord
  has_many :photos
  belongs_to :user
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  mount_uploader :image, AvatarUploader
  mount_uploaders :avatars, AvatarUploader
  serialize :avatars, JSON
end

