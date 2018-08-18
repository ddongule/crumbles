class InfoOwnerController < ApplicationController
  def index
    @breads = Array.new()
    owner = Owner.find_by(email: current_owner.email)
    @bakery = Bakery.find(owner.id)
    bread_all = Bread.all

    bread_all.each do |b|
      if b.bakery_id == @bakery.id
        @breads.push(b)
      end
    end
    
  end
end
