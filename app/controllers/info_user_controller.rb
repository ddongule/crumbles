class InfoUserController < ApplicationController
  def index
    @user = current_user
  end

def reviews
    # all_reviews = Review.all
    # @my_reviews = Array.new()

    # all_reviews.each do |r|
    #   if r.user_name == current_user.name
    #     @my_reviews.push(r)
    #   end
    # end
    @my_reviews = Review.where(user_id: current_user.id)
  end




  def reservations
    reservations = Reservation.all
    @reservations_arr = Array.new()

    reservations.each do |r|
      if r.user_id == current_user.id
        @reservations_arr.push(r)
      end
    end
  end

  def basket
    @my_basket = Array.new()
    basket_all = Basket.all
    basket_all.each do |b|
      if b.user_id == current_user.id
        @my_basket.push(b)
      end
    end
  end

  def basket_create
    bread = Bread.find(params[:bread_id])
    amount = params[:amount]
    basket = Basket.new()
    basket.bread_id = bread.id
    basket.amount = amount
    basket.user_id = current_user.id
    basket.save

    redirect_to "/detail_item/index/#{bread.bread_name}"
  end

  def basket_cancle
    basket = Basket.find(params[:basket_id])
    bread_id = basket.bread_id
    basket.destroy

    redirect_to "/info_user/basket"
  end
end
