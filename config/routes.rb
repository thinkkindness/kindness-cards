KindnessCard::Application.routes.draw do

  devise_for :accounts
  resources :accounts, :only => :show

  resources :cards do
    resources :tracks
  end

  resources :tracks do
    resources :messages
  end

  match '/:id' => 'tracks#new'
  match '/:id/messages' => 'messages#new'

  root :to => "home#index"

end
