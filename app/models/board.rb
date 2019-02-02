class Board < ActiveRecord::Base
  belongs_to :user
  has_many :likes
  mount_uploader :image, ImageUploader

  validates_processing_of :image
  validate :image_size_validation
 
  enum category: {
    cat: 1,
    dog: 2,
    etc: 99
  }
  
  private
  def image_size_validation
    errors[:image] << "should be less than 100MB" if image.size > 100.megabytes
  end

end
