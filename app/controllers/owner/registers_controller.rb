class Owner::RegistersController < ApplicationController
    def new
        @owner = Owner.new()
    end
      
    def create
      super
    end
    
end
