Rubyweb::Application.routes.draw do
  resources :replays

  root :to => "home#index"
  resources :room, :controller => :rooms do
    member do
      get :info
      get :map
      post :add
      post :turn
    end
  end

  resources :maps

  devise_for :users

  match ':controller(/:action(/:id(.:format)))'

end
