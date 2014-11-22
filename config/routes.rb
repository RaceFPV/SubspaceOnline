Rails.application.routes.draw do
  resources :home do
    collection { get :events }
  end
  resources :messages do
    collection { get :events }
  end
  devise_for :players
  root 'home#index'
end
