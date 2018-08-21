module ItemlistHelper

  def category
    bread_all = Bread.all
    bread_category_arr = Array.new()

    bread_all.each do |b|
      i = 0 
      isExist = false
      for i in 0..bread_category_arr.length
        if bread_category_arr[i] == b.category
          isExist = true
        end
      end

      if isExist == false
        bread_category_arr.push(b.category)
      end
    end
    
    return bread_category_arr
  end
end
