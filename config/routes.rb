KindnessCard::Application.routes.draw do

  devise_for :accounts
  resources :accounts, :only => :show

  resources :cards do
    resources :tracks
  end

  resources :tracks do
    resources :messages
  end

  match '/learn' => 'pages#learn'
  match '/home' => 'pages#home'

  match '/:id' => 'tracks#new'
  match '/:id/messages' => 'messages#new'

  root :to => "tracks#new"

end
