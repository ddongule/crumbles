class InfoUserController < ApplicationController
  def index
    @user = current_user
  end

  def reviews
    all_reviews = Review.all
    @my_reviews = Array.new()

    all_reviews.each do |r|
      if r.user_name == current_user.name
        @my_reviews.push(r)
      end
    end

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
end
