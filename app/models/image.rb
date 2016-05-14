class Image < ActiveRecord::Base
  belongs_to :listing
  attachment :file
end
