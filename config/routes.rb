Rails.application.routes.draw do
  devise_for :utilisateurs
  root to: 'sites#index'
  resources :sites do
    resources :news
  end
  get 'flux', to: 'flux#index'
  get 'flux/:site_id', to: 'flux#news', as: :news
  get 'flux/:site_id/:new_id', to: 'flux#new', as: :new
end
