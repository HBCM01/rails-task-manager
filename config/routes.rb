Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # home page route
  root to: 'tasks#home'
  # displays all db records in a list
  get '/tasks', to: 'tasks#index'
  # takes you to a page where user can input attributes to create a new record and saves to db
  get '/tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  # takes you to a new page that shows a single db record with more information
  get '/tasks/:id', to: 'tasks#show', as: 'task'
  # routes to a page to find a db record you want to edit
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'task_edit'
  patch '/tasks/:id', to: 'tasks#update', as: 'task_update'
  # deleted record from the DB
  delete '/tasks/:id', to: 'tasks#destroy', as: 'task_delete'
end
