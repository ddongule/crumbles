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
    category_arr = Array.new()
    @place = params[:place]
    categorys = params[:category]

    if @place != nil
      if categorys != nil                                         # 지역명도 있고 카테고리도 있고
        bread_all.each do |b|
          if Bakery.find(b.bakery_id).address.include? @place
            for i in 0..categorys.length
              if b.category == categorys[i]
                bread_find_place_arr.push(b)
              end
            end
          end
        end
        @bread = bread_find_place_arr
      else                                                        # 지역명만 있음
        bread_all.each do |b|
          if Bakery.find(b.bakery_id).address.include? @place
            bread_find_place_arr.push(b)
          end
        end
        @bread = bread_find_place_arr
      end 
    else                                                         
      if categorys != nil                                         # 카테고리만 있음
        bread_all.each do |b|
          for i in 0..categorys.length
            if b.category == categorys[i]
              bread_find_place_arr.push(b)
            end
          end
        end
        @bread = bread_find_place_arr
      else                                                        # 다 없음
        @bread = bread_all
      end
    end
  end

end
