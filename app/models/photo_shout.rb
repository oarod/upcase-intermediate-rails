class PhotoShout < ActiveRecord::Base
  has_attached_file :image, styles: {
    shout: '200x200>'
  }

  validates_attachment :image, content_type: { content_type: /\Aimage\/.*\Z/ }
end
