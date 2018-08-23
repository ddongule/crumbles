class DetailItemController < ApplicationController
  def index
    get_bread = params[:bread_name]
    @bread = Bread.find_by(bread_name: get_bread)
    @bakery = Bakery.find(@bread.bakery_id)
    @review = @bread.reviews.order("created_at DESC")
  end

  def reservation
    bread = Bread.find(params[:bread_id])
    new_order = Reservation.new
    new_order.bakery_id = bread.bakery_id
    new_order.bread_id = bread.id
    new_order.user_id = current_user.id
    new_order.amount = params[:reservation_amount]
    new_order.save

    bread.bookable_num = bread.bookable_num.to_i - params[:reservation_amount].to_i
    bread.save

    redirect_to "/detail_item/index/#{bread.bread_name}"
  end

  def cancle
    reservation_arr = Array.new()
    bread = Bread.find(params[:bread_id])
    reservation_id = 0
    reservation = Reservation.all
    reservation.each do |r|
      if r.bread_id == bread.id
        reservation_arr.push(r)
      end
    end
    
    reservation_arr.each do |ra|
      if ra.user_id == current_user.id
        reservation_id = ra.id
        break;
      end
    end
    temp = Reservation.find(reservation_id)
    bread.bookable_num += temp.amount
    bread.save
    temp.destroy

    redirect_back(fallback_location: root_path)
  end
end
