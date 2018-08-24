class Basket < ApplicationRecord
    belongs_to :user, required: false

end
