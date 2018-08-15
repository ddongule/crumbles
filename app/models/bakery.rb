class Bakery < ApplicationRecord
    has_many :breads, :dependent => :destroy
end
