KindnessCard::Application.routes.draw do

  resources :cards

  resources :tracks

  devise_for :accounts
  resources :accounts, :only => :show
  match '/:id' => 'cards#show'
  root :to => "home#index"

end
