class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable,
  #        :confirmable, :lockable, :timeoutable, :trackable

  devise :registerable, :database_authenticatable, :jwt_authenticatable,
          jwt_revocation_strategy: JwtDenylist

  before_save :before_save

  validates :email, :phone, :fullname, :username, presence: true

  def before_save
    add_jti
  end
  
  def add_jti
    self.jti = SecureRandom.uuid
  end
end
