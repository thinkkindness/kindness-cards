KindnessCard::Application.routes.draw do

  devise_for :users

  resources :users, :shallow => true do
    resources :accounts do
      resources :cards do
        resources :tracks
      end
    end
  end

  resources :cards do
    resources :tracks
  end
  resources :tracks

  match '/learn' => 'pages#learn'
  match '/home' => 'pages#home'

  match '/:serial_number' => 'tracks#new'
  match '/:serial_number/messages' => 'messages#new'

  root :to => "tracks#new"

end
