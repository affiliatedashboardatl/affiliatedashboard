Rails.application.routes.draw do
  devise_for :users
  get 'cj/performance'
  get 'dashboard/home'

  root to: 'dashboard#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
