class ReviewsController < ApplicationController
    
    def create
        bread_r = Bread.find(params[:bread_id])
        review = Review.new
        review.bread_name = bread_r.bread_name
        review.user_name = current_user.name
        review.user_email = current_user.email
        review.content = params[:input_content]
        review.star_point = params[:input_starPoint]
        review.image = params[:input_img]
        review.bread_id = params[:bread_id]
        if user_signed_in? 
            review.user_id = current_user.id
            review.owner_id = 0
        else
            review.owner_id = current_user.id
            review.user_id = 0
        end

        review.save

        star_avg = star_cal(params[:bread_id].to_i)
        bread_r.star_point = star_avg
        bread_r.save

        redirect_to "/detail_item/index/#{bread_r.bread_name}"
    end

    def edit
        @bread = params[:bread_id]
        @review = Review.find(params[:review_id])
    end
  
    def update
        review = Review.find(params[:review_id])
        review.content = params[:input_content]
        review.star_point = params[:input_starPoint]
        review.image = params[:input_img]

        review.save

        bread = Bread.find(params[:bread_id])
        star_avg = star_cal(params[:bread_id].to_i)
        bread.star_point = star_avg
        bread.save

        redirect_to "/detail_item/index/#{review.bread_name}"
    end

    def destroy
        bread = Bread.find(params[:bread_id])
        review = Review.find(params[:review_id])
        review.destroy
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
