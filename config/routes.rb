Rails.application.routes.draw do
  # For details on the DSL available within this file, see
  # http://guides.rubyonrails.org/routing.html
  devise_for :utilisateurs

  root to: 'readers#index'

  resources :writers
  resources :readers

  resources :sites do
    resources :news
  end

  get 'flux', to: 'flux#index'
  get 'flux/:site_id', to: 'flux#news', as: :news
  get 'flux/:site_id/:new_id', to: 'flux#new', as: :new

end
