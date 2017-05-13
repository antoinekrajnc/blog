Rails.application.routes.draw do
  resources :posts
  get '/admin', to: 'posts#admin', as: 'admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "posts#index"

end
