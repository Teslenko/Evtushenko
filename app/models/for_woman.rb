class ForWoman < ApplicationRecord
  mount_uploader :womanavtr, ImageUploader
  validates_presence_of :womanavtr # это чтобы он проверял наличие загружененой фотки, без которой не было возмонжости сохранить ю


  validates_processing_of :womanavtr
  validate :image_size_validation

  private
  def image_size_validation
    # errors[:womanavtr] << "Размер изображения должен быть не более 4МB" if womanavtr.size > 4.megabytes
  end

end
