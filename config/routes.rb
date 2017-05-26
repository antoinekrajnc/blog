Rails.application.routes.draw do
  devise_for :admins
  mount Ckeditor::Engine => '/ckeditor'
  resources :posts
  get '/admin', to: 'posts#admin', as: 'admin'
  delete '/admins/sign_out', to: 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "posts#index"

end
