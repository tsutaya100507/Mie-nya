Rails.application.routes.draw do
  root 'tasks#index'
  resources :tasks do
    resources :child_tasks, only: [:create, :destroy, :edit]
  end

  # get 'effects#index'
  # get 'article'=> 'effects#article'
end
