Rails.application.routes.draw do
  resources :conversations do
    resources :messages
  end

	root to: 'home#index'
	resources :profiles
  resources :interests
  resources :addresses
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
