Rails.application.routes.draw do
  root 'tasks#index'
  resources :tasks do
    resources :child_tasks, only: [:create, :destroy, :edit]
    put :sort
  end

  post 'tasks/:task_id/child_tasks/:id/toggle' => 'child_tasks#toggle'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users

  # get 'effects#index'
  # get 'article'=> 'effects#article'
end
