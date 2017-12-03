Rails.application.routes.draw do
  root 'tasks#index'
  resources :tasks

  # get 'effects#index'
  # get 'article'=> 'effects#article'
end
