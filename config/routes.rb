Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  get 'users/show'

  get 'posts/index'
  get 'posts/new'
  post 'posts/create'
  get 'posts/:id/edit' => "posts#edit"
  post 'posts/:id/update' => "posts#update"
  get 'posts/:id/destroy' => "posts#destroy"
  get 'posts/:id/show' => "posts#show"

  post 'posts/:post_id/comments/create' => "comments#create"
  get 'comments/:id/destroy' => "comments#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
