class Review < ApplicationRecord
    resourcify
    include Authority::Abilities
    
    belongs_to :bread, required: false
    belongs_to :owner, required: false
    belongs_to :user, required: false

end
