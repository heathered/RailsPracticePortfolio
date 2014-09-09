Portfolio::Application.routes.draw do
  get "home" => 'pages#welcome'
  
  get "projects/index" => 'class_projects#index', as: 'projects'
  get "projects/new" => 'class_projects#new', as: 'new_project' 
  post "projects/new" => 'class_projects#create'
  get "projects/:id" => 'class_projects#show', as: 'project'
  get "projects/:id/update" => 'class_projects#edit', as: 'edit_project'
  post "projects/:id/update" => 'class_projects#update'
  delete "projects/:id/delete" => 'class_projects#destroy', as: 'delete_project'
  
end
