Rails.application.routes.draw do
  resources :home
  get '/chat' => 'home#chat'
  devise_for :players
  root 'home#index'
end
