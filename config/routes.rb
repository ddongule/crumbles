Rails.application.routes.draw do

  devise_for :users
  devise_for :owners, skip: [:registrations]
  devise_scope :owner do
    get '/owners/sign_up' => 'owner/registers#new', as: :new_owner_registration #회원가입
    post '/owners' => 'owner/registers#create', as: :owner_registration #회원가입(POST)
    get '/owners' => 'owner/registers#create'
    get 'owner/registers/bakery/:owner_id' => 'owner/registers#bakery'
    get 'owner/registers/bakery_create/:owner_id' => 'owner/registers#bakery_create'
  end

  root "main#index"
  
  get 'main/index'

  get 'main/sign' => 'main#sign'

  get 'search/index' => "search#index"

  get '/search/bakery/:keyword' => "search#bakery"

  get '/search/bread_name/:keyword' => "search#bread_name"

  get '/search/bread_category/:keyword' => "search#bread_category"
  
  get '/search/nonexist/:keyword' => "search#nonexist"

  get 'detail_item/index/:bread_name' => "detail_item#index"

  post '/detail_item/index/:bread_id/reviews/create' => 'reviews#create'

  get '/detail_item/index/:bread_id/reviews/destroy/:review_id' => 'reviews#destroy' , as: 'review_destroy'

  get '/detail_item/index/:bread_id/reviews/edit/:review_id' => "reviews#edit"

  post '/detail_item/index/:bread_id/reviews/update/:review_id' => "reviews#update"

  get 'detail_item/reservation/:bread_id' => 'detail_item#reservation'

  get '/detail_item/cancle/:bread_id' => 'detail_item#cancle'

  get 'itemlist/index' => "itemlist#index"

  get 'itemlist/bakery' => "itemlist#bakery"

  get 'itemlist/bread' => "itemlist#bread"
  
  get 'info_user/index'

  get 'info_user/reservations' => "info_user#reservations"

  get 'info_user/reviews' => 'info_user#reviews'

  get 'info_owner/index' => 'info_owner#index'

  post 'info_owner/save/:bakery_id' => 'info_owner#save'

  get 'itemlist/bakery_detail' => 'itemlist#bakery_detail'

  get 'info_owner/bread_regist' => 'info_owner#bread_regist' 

  post '/info_owner/bread_create' => 'info_owner#bread_create' 

  get 'info_owner/bread_edit/:bread_id' => 'info_owner#bread_edit' 

  post '/info_owner/bread_update/:bread_id' => 'info_owner#bread_update' 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
