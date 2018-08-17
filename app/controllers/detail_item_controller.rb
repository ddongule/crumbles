class DetailItemController < ApplicationController
  def index
    get_bread = params[:bread_name]
    @bread = Bread.find_by(bread_name: get_bread)
    @bakery = Bakery.find(@bread.bakery_id)
    @review = @bread.reviews.order("created_at DESC")
  end
end
