class ReviewsController < ApplicationController
    
    def create
        @bread_r = Bread.find(params[:bread_id])
        @review = Review.new
        @review.user = params[:input_user]
        @review.content = params[:input_content]
        @review.star_point = params[:input_starPoint]
        @review.img = params[:input_img]
        @review.bread_id = params[:bread_id]
        @review.save
        
        star_avg = star_cal(params[:bread_id])
        @bread_r.star_point = star_avg
        @bread_r.save

        redirect_to "/detail_item/index/#{@bread_r.bread_name}"
    end

    def destroy
        bread = Bread.find(params[:bread_id])
        @review = Review.find(params[:review_id])
        @review.destroy

        redirect_to "/detail_item/index/#{bread.bread_name}"
    end

    def star_cal(id)
        temp_arr = Array.new()
        temp = Review.all
        temp.each do |t|
            if t.bread_id == id
                temp_arr.push(id)
            end
        end
        i = 0
        sum = 0.0
        for i in 1..temp_arr.length
            star = Review.find(i)
            sum += star.star_point
        end
        return sum/temp_arr.length
    end
end
