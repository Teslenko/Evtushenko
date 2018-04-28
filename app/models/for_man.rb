class ForMan < ApplicationRecord

  mount_uploader :avatar, ImageUploader
  validates_presence_of :avatar # это чтобы он проверял наличие загружененой фотки, без которой не было возмонжости сохранить ю


  validates_processing_of :avatar
  validate :image_size_validation

  private
  def image_size_validation
    errors[:avatar] << "should be less than 2 Megabites" if avatar.size > 2.megabytes
  end

end
