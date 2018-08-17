class Review < ApplicationRecord
    resourcify
    include Authority::Abilities
    
    belongs_to :bread
end
