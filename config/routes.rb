KindnessCard::Application.routes.draw do

  devise_for :users
  devise_scope :user do
    get "/login" => "devise/sessions#new"
    get "/logout" => "devise/sessions#destroy"
    get "/register" => "devise/registrations#new"
    get "/reset" => "devise/passwords#new"
  end

  resources :accounts do
    resources :users
    resources :cards do
      resources :tracks
    end
  end

  resources :users
  resources :accounts

  resources :cards do
    resources :tracks
  end

  resources :tracks

  match '/learn' => 'pages#learn'
  match '/home' => 'pages#home'

  # match '/:serial_number' => 'tracks#new'
  # match '/:serial_number/messages' => 'messages#new'

  root :to => "tracks#new"

end
