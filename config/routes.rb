Rails.application.routes.draw do
	devise_for :users, :controllers => { registrations: 'registrations' }
	get 'cj/performance'
	get 'dashboard/home'
	get 'welcome', to: 'landing#show'

	root to: 'dashboard#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
