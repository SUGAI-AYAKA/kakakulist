Rails.application.routes.draw do
  
  root to: 'kakakus#index'
  
  resources :kakakus
end
