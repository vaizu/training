class Release < ApplicationRecord
  has_many :musics, dependent: :destroy
  accepts_nested_attributes_for :musics, allow_destroy: true
  has_one_attached :release_image

  private

  def release_image_attached?
    release_image.attached?
  end

  def attach_default_image
    file_path = Rails.root.join('app/assets/images/no_image1.jpg')
    release_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
  end
end
