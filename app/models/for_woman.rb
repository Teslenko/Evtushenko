class ForWoman < ApplicationRecord
  mount_uploader :womanavtr, ImageUploader
  validates_presence_of :womanavtr # это чтобы он проверял наличие загружененой фотки, без которой не было возмонжости сохранить ю


  validates_processing_of :womanavtr
  validate :image_size_validation

  private
  def image_size_validation
    errors[:womanavtr] << "should be less than 2 Megabites" if womanavtr.size > 2.megabytes
  end

end
