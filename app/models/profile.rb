class Profile < ApplicationRecord
  belongs_to :user
  has_on_attached :photo
end
