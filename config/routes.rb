Rails.application.routes.draw do
  get 'users/new'

  root 'tasks#index'
  resources :tasks do
    resources :child_tasks, only: [:create, :destroy, :edit]
    put :sort
  end

  post 'tasks/:task_id/child_tasks/:id/toggle' => 'child_tasks#toggle'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  resources :users

  # get 'effects#index'
  # get 'article'=> 'effects#article'
end
