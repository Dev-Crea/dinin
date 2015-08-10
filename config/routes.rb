Rails.application.routes.draw do
  root to: 'sites#index'
  resources :sites do
    resources :news
  end
end
