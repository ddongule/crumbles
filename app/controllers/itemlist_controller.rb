class ItemlistController < ApplicationController

  def index
  end

  def bakery
    bakery_all = Bakery.all
    bakery_find_place_arr = Array.new()
    place = params[:place]

    if place != nil
      bakery_all.each do |b|
        if b.address.include? place
          bakery_find_place_arr.push(b)
        end
      end
      @bakery = bakery_find_place_arr
    else
      @bakery = bakery_all
    end
  end

  def bread
    bread_all = Bread.all
    bread_find_place_arr = Array.new()
    place = params[:place]

    if place != nil
      bread_all.each do |b|
        if Bakery.find(b.bakery_id).address.include? place
          bread_find_place_arr.push(b)
        end
      end
      @bread = bread_find_place_arr
    else
      @bread = bread_all
    end
  end

end
