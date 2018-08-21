module DetailItemHelper
    def isExist(bread_id)
        reservation_arr = Array.new()
        bread = Bread.find(bread_id)
    
        reservation = Reservation.all
        reservation.each do |r|
          if r.bread_id == bread.id
            reservation_arr.push(r)
          end
        end
        
        reservation_arr.each do |ra|
          if ra.user_id == current_user.id
            return true
          end
        end
    
        return false
      end
end
