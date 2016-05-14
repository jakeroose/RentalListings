class Listing < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "700x500#", small: "350x250#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  has_many :images, dependent: :destroy
  accepts_attachments_for :images, append: true

end
