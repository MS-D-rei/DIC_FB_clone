class Post < ApplicationRecord
  belongs_to :user

  mount_uploader :image, ImageUploader

  default_scope -> { order(created_at: :desc) }

  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
end
