class ForMan < ApplicationRecord

  mount_uploader :avatar, ImageUploader
  validates_presence_of :avatar # это чтобы он проверял наличие загружененой фотки, без которой не было возмонжости сохранить ю


  validates_processing_of :avatar
  validate :image_size_validation

  private
  def image_size_validation
    errors[:avatar] << "Размер изображения должен быть не более 4МB" if avatar.size > 4.megabytes
  end

end
