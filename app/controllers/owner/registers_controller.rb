class Owner::RegistersController < Devise::RegistrationsController
    def new
    end
      
    def create
        @owner = Owner.new()
        @owner.name = params[:owner_name]
        @owner.email = params[:owner_email]
        @owner.password = params[:owner_password]
        @owner.save
        owner_id = @owner.id

        redirect_to "/owner/registers/bakery/#{owner_id}"
    end
   
    def bakery

    end

    def bakery_create
        owner_id = params[:owner_id]
        bakery = Bakery.new()
        bakery.name = params[:owner_bakery_name]
        bakery.address = params[:owner_address]
        bakery.telephone_number = params[:owner_phone]
        bakery.business_license = params[:owner_business]
        #bakery.email = params[:]
        bakery.open_time = params[:owner_open_time]
        bakery.close_time = params[:owner_close_time]
        bakery.seat = params[:owner_seat]
        bakery.image = params[:owner_bakery_img]
        bakery.owner_id = owner_id
        bakery.save
        session[:owner_id] = owner_id

        redirect_to "/main/index"
    end
end
