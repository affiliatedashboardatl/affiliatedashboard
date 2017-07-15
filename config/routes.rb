Rails.application.routes.draw do
	devise_for :users, :controllers => { registrations: 'registrations' }, 
		path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'signup'}

	get 'cj/performance'
	get 'dashboard', to: 'dashboard#home'
	
	root to: 'landing#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
