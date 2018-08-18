class Review < ApplicationRecord
    resourcify
    include Authority::Abilities
    
    belongs_to :bread
    belongs_to :owner
    belongs_to :user

end
