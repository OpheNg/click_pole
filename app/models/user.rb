class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # has_one_attached :photo
  has_many :trainings, dependent: :destroy
  has_one :profile, dependent: :destroy
  has_one :host, dependent: :destroy
end
