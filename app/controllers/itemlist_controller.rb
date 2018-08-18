class ItemlistController < ApplicationController

  def index
  end

  def bakery
    @bakery = Bakery.all
  end
  def bakery_detail
  end
  

  def bread
    @bread = Bread.all
  end

end
