class DetailItemController < ApplicationController
  def index
    get_bread = params[:bread_name]
    @bread = Bread.find_by(bread_name: get_bread)
    @review = @bread.reviews
  end
end
