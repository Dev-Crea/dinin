Rails.application.routes.draw do
  devise_for :utilisateurs
  root to: 'sites#index'
  resources :sites do
    resources :news
  end
end
