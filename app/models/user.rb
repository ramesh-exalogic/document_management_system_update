class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  audited except: [:updated_at]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
          
          after_initialize :set_default_role, if: :new_record?

          enum role: { user: 0, Admin: 1, Editor: 2, Viewer: 3 }

  def set_default_role
    self.role ||= :user
  end
end
