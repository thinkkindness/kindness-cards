KindnessCard::Application.routes.draw do

  devise_for :accounts
  resources :accounts, :only => :show
  resources :tracks
  resources :cards

  match '/:id' => 'cards#show'
  root :to => "home#index"

end
