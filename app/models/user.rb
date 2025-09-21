class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :books, dependent: :destroy
  has_one_attached :profile_image

  # 一意性を持たせ、かつ2~20文字以内
  validates :name, presence: true, uniqueness: true, length: { in: 2..20 }
  # 最大50文字まで
  validates :introduction, length: { maximum: 50}
end
