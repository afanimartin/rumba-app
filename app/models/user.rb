class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  belongs_to :role

  has_one :restaurant, dependent: :destroy

  has_one :cart, dependent: :destroy

  validates_presence_of :email, :password, :password_confirmation

  def is_user_admin?
    self.role.name == "admin"
  end
end
