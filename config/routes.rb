Rails.application.routes.draw do
  root 'tasks#index'
  resources :tasks do
    resources :child_tasks, only: [:create, :destroy, :edit]
    put :sort
  end

  post 'tasks/:task_id/child_tasks/:id/toggle' => 'child_tasks#toggle'

  # get 'effects#index'
  # get 'article'=> 'effects#article'
end
