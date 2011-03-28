KindnessCard::Application.routes.draw do

  devise_for :accounts
  resources :accounts, :shallow => true do
    resources :cards
  end

  resources :cards, :shallow => true do
    resources :tracks
  end

  match '/learn' => 'pages#learn'
  match '/home' => 'pages#home'

  # match '/:id' => 'tracks#new'
  # match '/:id/messages' => 'messages#new'

  root :to => "tracks#new"

end
