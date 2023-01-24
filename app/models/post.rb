class Post < ApplicationRecord
  has_many_attached :images
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { minimum: 2 }
  validates :description, presence: true

  validate :images_are_images

  def images_are_images
    if images.attached?
      images.each do |image|
        unless image.content_type.in?(%w(image/jpeg image/png))
          errors.add(:images, 'must be JPEGs or PNGs')
        end
      end
    else
      errors.add(:images, "should be attached")
    end
  end
end

