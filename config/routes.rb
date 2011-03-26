KindnessCard::Application.routes.draw do

  devise_for :accounts
  resources :accounts, :only => :show

  resources :cards

  resources :tracks

  match '/:id' => 'cards#show'
  root :to => "home#index"

end
