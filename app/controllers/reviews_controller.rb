class ReviewsController < ApplicationController
    
    def create
        bread = Bread.find(params[:bread_id])
        @review = Review.new
        @review.user = params[:input_user]
        @review.content = params[:input_content]
        @review.starPoint = params[:input_starPoint]
        @review.img = params[:input_img]
        @review.bread_id = params[:bread_id]
        @review.save

        redirect_to "/detail_item/index/#{bread.bread_name}"
    end

    def destroy
        bread = Bread.find(params[:bread_id])
        @review = Review.find(params[:review_id])
        @review.destroy

        redirect_to "/detail_item/index/#{bread.bread_name}"
    end
end
