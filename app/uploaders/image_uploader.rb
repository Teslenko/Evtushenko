# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

   include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  else
    "uploads/#{mounted_as}/"

  end

  process resize_to_fit: [600, 600]

  version :thumb do
    process :resize_to_fit => [250, 250]
  end

  def extension_whitelist
    %w(jpg jpeg gif png )
  end

  def content_type_whitelist
    /image\//
  end

end
