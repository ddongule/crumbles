class Bakery < ApplicationRecord
    has_many :breads, :dependent => :destroy

    mount_uploader :image, ImageUploader
end
