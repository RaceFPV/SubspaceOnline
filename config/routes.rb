Rails.application.routes.draw do
  resources :home
  get '/chat' => 'home#chat'
  get '/movement' => 'home#movement'
  get '/joined' => 'home#joined'
  devise_for :players, controllers: { sessions: "player/sessions" }
  root 'home#index'
end
