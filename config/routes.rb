Rails.application.routes.draw do
  resources :creneaus
  get 'bienvenues/index'
  resources :sexes
  resources :photos
  devise_for :membres
  root 'bienvenues#index'
   devise_scope :membre do
    get '/membres/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
