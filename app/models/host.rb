class Host < ApplicationRecord
  belongs_to :user
  # has_one_attached :photo
  has_many :trainings, dependent: :destroy
end
