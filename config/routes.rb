Rails.application.routes.draw do

  devise_for :users
  
  root "main#index"
  
  get 'main/index'

  get 'search/index' => "search#index"

  get '/search/bakery/:keyword' => "search#bakery"

  get '/search/bread_name/:keyword' => "search#bread_name"

  get '/search/bread_category/:keyword' => "search#bread_category"
  
  get '/search/nonexist/:keyword' => "search#nonexist"

  get 'detail_item/index/:bread_name' => "detail_item#index"

  post '/detail_item/index/:bread_id/reviews/create' => 'reviews#create'

  get '/detail_item/index/:bread_id/reviews/destroy/:review_id' => 'reviews#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
