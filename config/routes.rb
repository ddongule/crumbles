Rails.application.routes.draw do

  root "main#index"
  
  get 'search/index'

  get 'main/index'
  
  get 'detail_item/index/:bread_name' => "detail_item#index"

  post '/detail_item/index/:bread_id/reviews/create' => 'reviews#create'

  get '/detail_item/index/:bread_id/reviews/destroy/:review_id' => 'reviews#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
