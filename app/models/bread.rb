class Bread < ApplicationRecord
    belongs_to :bakery
    has_many :reviews, :dependent => :destroy

    mount_uploader :image, ImageUploader
end
