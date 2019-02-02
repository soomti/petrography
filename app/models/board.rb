class Board < ActiveRecord::Base
  belongs_to :user
  mount_uploader :image, ImageUploader

  validates_processing_of :image
  validate :image_size_validation
  
  private
  def image_size_validation
    errors[:image] << "should be less than 100MB" if image.size > 100.megabytes
  end

end
