class ReviewsController < ApplicationController
    
    def create
        bread_r = Bread.find(params[:bread_id])
        @review = Review.new
        @review.user = params[:input_user]
        @review.content = params[:input_content]
        @review.star_point = params[:input_starPoint]
        @review.img = params[:input_img]
        @review.bread_id = params[:bread_id]
        @review.save

        star_avg = star_cal(params[:bread_id].to_i)
        bread_r.star_point = star_avg
        bread_r.save

        redirect_to "/detail_item/index/#{bread_r.bread_name}"
    end

    def destroy
        bread = Bread.find(params[:bread_id])
        @review = Review.find(params[:review_id])
        @review.destroy
        star_avg = star_cal(params[:bread_id].to_i)
        bread.star_point = star_avg
        bread.save
        
        redirect_to "/detail_item/index/#{bread.bread_name}"
    end

    def star_cal(id)
        temp_arr = Array.new()
        temp = Review.all
        i = 0
        sum = 0.0

        temp.each do |t|
            if t.bread_id == id
                sum += t.star_point.to_f
                i += 1
            end
        end

        length = i.to_f
        return sum/length
    end
end