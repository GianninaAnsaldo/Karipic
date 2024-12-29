class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :comments, dependent: :destroy 
  has_one_attached :avatar

  validate :avatar_presence, unless: :karina?

  enum role: [:registrado, :karina]

  private

  def avatar_presence
    errors.add(:avatar, "Debe estar presente") unless avatar.attached?
  end
end
