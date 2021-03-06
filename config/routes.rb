Rails.application.routes.draw do
  
  post "/likes/:post_id/create" =>"likes#create"
  post "/likes/:post_id/destroy"=> "likes#destroy"
 
  get "users/:id/likes"=>"users#likes"
  post"logout" =>"users#logout"
  post "login"=>"users#login"
  get "login" => "users#login_form"
  post "users/create"=>"users#create"
  post "users/:id/update"=>"users#update"
  get "signup" =>"users#new"
  get "users/index"=>"users#index"
  get "users/:id/edit"=> "users#edit"
  get "users/:id"=>"users#show"

  post"posts/create"=> "posts#create"
  get "posts/new" =>"posts#new"
  get 'posts/index'=> "posts#index"
  get "posts/:id/edit"=>"posts#edit"
  get 'posts/:id' => 'posts#show'
  post "posts/:id/update"=>"posts#update"
  post "posts/:id/destroy" =>"posts#destroy"
  get "/" => "home#top"
  get "about" => "home#about"
end
