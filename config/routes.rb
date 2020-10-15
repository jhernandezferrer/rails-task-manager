Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # CRUD
  # Show all
  # get '/tasks', to: 'tasks#index'

  
  # # Create new taks
  # # 1- Display the form
  # get '/task_new', to: 'tasks#new'
  # # 2- Save new
  # post '/tasks', to: 'tasks#create'
  
  # # Show only one
  # get '/tasks/:id', to: 'tasks#show', as: 'task'

  # # Update task
  # get '/tasks/:id/edit', to: 'tasks#edit'
  # patch '/tasks/:id', to: 'tasks#update'

  # # Delete task
  # delete '/tasks/:id', to: 'tasks#destroy'

  resources :tasks
end
