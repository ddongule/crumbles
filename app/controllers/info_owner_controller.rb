class InfoOwnerController < ApplicationController
  def index
    @breads = Array.new()
    owner = Owner.find_by(email: current_owner.email)
    @bakery = Bakery.find(owner.id)
    bread_all = Bread.all

    bread_all.each do |b|
      if b.bakery_id == @bakery.id
        @breads.push(b)
      end
    end
    
  end

  def bread_regist
  end
  
  def bread_create
    bread = Bread.new()
    bakery = Bakery.find_by(owner_id: current_owner.id)
    bread.bakery_name =  bakery.name
    bread.bread_name = params[:bread_name]
    bread.category = params[:category]
    bread.amount = params[:amount]
    bread.bookable_num = params[:bookable]
    bread.price = params[:price]
    bread.star_point = 0.0
    bread.image = params[:bread_image]
    bread.bakery_id = bakery.id
    bread.save

    redirect_to '/info_owner/index'
  end

  def bread_edit
    @bread = Bread.find(params[:bread_id])
  end

  def bread_update
    bread = Bread.find(params[:bread_id])
    bread.bread_name = params[:bread_name]
    bread.category = params[:category]
    bread.amount = params[:amount]
    bread.bookable_num = params[:bookable]
    bread.price = params[:price]
    bread.image = params[:bread_image]
    bread.save

    redirect_to '/info_owner/index'
  end
end
