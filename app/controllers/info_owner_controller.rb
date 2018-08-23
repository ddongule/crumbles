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

  def save
    bakery = Bakery.find(params[:bakery_id])
    bakery.name = params[:name]
    bakery.address = params[:address]
    bakery.telephone_number = params[:phone]
    bakery.business_license = params[:business]
    bakery.open_time = params[:open_time]
    bakery.close_time = params[:close_time]
    bakery.seat = params[:seat]
    bakery.image = params[:img]
    bakery.save
    
    redirect_to "/info_owner/index"
  end

  def bread_regist
  end
  
  def bread_create
    bread = Bread.new()
    bakery = Bakery.find_by(owner_id: current_owner.id)
    bread.bakery_name =  bakery.name
    bread.bread_name = params[:bread_name]
    bread.category = params[:category]
    bread.amount = params[:amount]
    bread.bookable_num = params[:bookable]
    bread.price = params[:price]
    bread.star_point = 0.0
    bread.image = params[:bread_image]
    bread.bakery_id = bakery.id
    bread.save

    redirect_to '/info_owner/index'
  end

  def bread_edit
    @bread = Bread.find(params[:bread_id])
  end

  def bread_update
    bread = Bread.find(params[:bread_id])
    bread.bread_name = params[:bread_name]
    bread.category = params[:category]
    bread.amount = params[:amount]
    bread.bookable_num = params[:bookable]
    bread.price = params[:price]
    bread.image = params[:bread_image]
    bread.save

    redirect_to '/info_owner/index'
  end

  def reservation
    @reservations_arr = Array.new()
    reservation_all = Reservation.all

    reservation_all.each do |r|
      if Bakery.find(r.bakery_id).owner_id == current_owner.id
        @reservations_arr.push(r)
      end 
    end
  end

  def reservation_end
    reservation = Reservation.find(params[:reservation_id])
    end_reservation = Endreservation.new()
    end_reservation.bakery_id = reservation.bakery_id
    end_reservation.bread_id = reservation.bread_id
    end_reservation.user_id = reservation.user_id
    end_reservation.amount = reservation.amount
    end_reservation.save

    reservation.destroy

    redirect_to '/info_owner/reservation'
  end

  def reservation_cancle
    reservation = Reservation.find(params[:reservation_id])
    bread = Bread.find(reservation.bread_id)
    bread.bookable_num += 1
    bread.save
    reservation.destroy

    redirect_to '/info_owner/reservation'
  end
end
