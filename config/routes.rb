Bloccit::Application.routes.draw do

  get "comments/create"

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :topics do
    resources :posts, except: [:index] do
      resources :comments, only: [:create, :destroy]
      match '/up-vote', to: 'votes#up_vote', as: :up_vote
      match '/down-vote', to: 'votes#down_vote', as: :down_vote
      resources :favorites, only: [:create, :destroy]
    end  
  end

 match "about" => 'welcome#about', via: :get

  root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
