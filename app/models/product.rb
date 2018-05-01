class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates_presence_of :image # это чтобы он проверял наличие загружененой фотки, без которой не было возмонжости сохранить ю

  validates_processing_of :image
  validate :image_size_validation

  private
  def image_size_validation
    errors[:image] << "Размер изображения должен быть не более 4МB" if image.size > 4.megabytes
  end


end
