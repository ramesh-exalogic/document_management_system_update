class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  audited except: [:updated_at]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
          
          after_initialize :set_default_role, if: :new_record?

          enum role: { user: 0, Admin: 1, Editor: 2, Viewer: 3 }
           has_one_attached :profile_picture
           validate :acceptable_image
           has_many :articles

  def set_default_role
    self.role ||= :user
  end

  private
  def acceptable_image
    return unless profile_picture.attached?
    unless profile_picture.byte_size <= 1.megabyte
      errors.add(:profile_picture, "is too big")
    end
    acceptable_types = ["image/jpeg", "image/png"]
    unless acceptable_types.include?(profile_picture.content_type)
      errors.add(:profile_picture, "must be a JPEG or PNG")
    end
  end


end
