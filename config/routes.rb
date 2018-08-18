Rails.application.routes.draw do

  devise_for :owners
  devise_for :users
  
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

  get 'itemlist/index' => "itemlist#index"

  get 'itemlist/bakery' => "itemlist#bakery"

  get 'itemlist/bread' => "itemlist#bread"
  
  get 'info_user/index'

  get 'info_user/reservations/:user_id' => "info_user#reservations"

  get 'info_user/reviews' => 'info_user#reviews'

  get 'info_owner/index' => 'info_owner#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
