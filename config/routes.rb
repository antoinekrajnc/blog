Rails.application.routes.draw do
  devise_for :admins
  mount Ckeditor::Engine => '/ckeditor'
  resources :posts
  get '/admin', to: 'posts#admin', as: 'admin'
  get '/contact', to: 'contacts#contact', as:'contact'
  get '/entrepreneurship', to: 'posts#entrepreneurship', as:'entrepreneurship'
  get '/startups', to: 'posts#startups', as:'startups'
  get '/learn', to: 'posts#learn', as:'learn'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "posts#index"

end
