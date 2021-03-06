class PictureUploader < CarrierWave::Uploader::Base
  
  include CarrierWave::MiniMagick

  storage :aws

  process resize_to_fit: [400, 600]
  
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

end
