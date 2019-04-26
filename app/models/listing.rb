class Listing < ActiveRecord::Base
  has_many :images, dependent: :destroy
  accepts_attachments_for :images, append: true
end
