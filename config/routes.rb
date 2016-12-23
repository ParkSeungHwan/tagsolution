Rails.application.routes.draw do
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'
  root 'home#index'
  post 'home/subscribe'
  post 'home/submit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
