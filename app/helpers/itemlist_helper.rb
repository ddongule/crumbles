module ItemlistHelper

    bread_all = Bread.all
    @bread_category_arr = Array.new()
    bread_all.each do |b|
      i = 0 
      while i < @bread_category_arr.length
        if @bread_category_arr[i] == b.category
          i += 1
          next
        end
        @bread_category_arr.push(b.category)
        i += 1
      end
    end
end
