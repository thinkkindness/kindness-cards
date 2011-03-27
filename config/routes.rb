KindnessCard::Application.routes.draw do

  devise_for :accounts
  resources :accounts, :only => :show

  resources :cards do
    resources :tracks
  end

  resources :tracks do
    resources :messages
  end
  
  resources :learns
  match '/learn' => 'learns#index'

  match '/:id' => 'tracks#new'
  match '/:id/messages' => 'messages#new'

  root :to => "tracks#new"

end
