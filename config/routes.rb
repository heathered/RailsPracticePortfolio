Portfolio::Application.routes.draw do
  get "home" => 'pages#welcome', as: 'home'
  
  get "projects" => 'class_projects#index', as: 'class_projects'
  get "projects/new" => 'class_projects#new', as: 'new_class_project' 
  post "projects" => 'class_projects#create'
  get "projects/:id" => 'class_projects#show', as: 'class_project'
  get "projects/:id/edit" => 'class_projects#edit', as: 'edit_class_project'
  put "projects/:id" => 'class_projects#update'
  delete "projects/:id/delete" => 'class_projects#destroy', as: 'delete_class_project'
  
  get "links" => 'links#index', as: 'links'
  get 'links/new' => 'links#new', as: 'new_link'
  post 'links' => 'links#create'
  get 'links/:id' => 'links#show', as: 'link'
  get 'links/:id/edit' => 'links#edit', as: 'edit_link'
  put 'links/:id' => 'links#update'
  delete 'links/:id/delete' => 'links#destroy', as: 'delete_link'
  
  get "tags" => 'tags#index', as: 'tags'
  get 'tags/new' => 'tags#new', as: 'new_tag'
  post 'tags' => 'tags#create'
  get 'tags/:id' => 'tags#show', as: 'tag'
  get 'tags/:id/edit' => 'tags#edit', as: 'edit_tag'
  put 'tags/:id' => 'tags#update'
  delete 'tags/:id/delete' => 'tags#destroy', as: 'delete_tag'
  
  get "contacts" => 'contacts#index', as: 'contacts'
  get 'contacts/new' => 'contacts#new', as: 'new_contact'
  post 'contacts' => 'contacts#create'
  get 'contacts/:id' => 'contacts#show', as: 'contact'
  get 'contacts/:id/edit' => 'contacts#edit', as: 'edit_contact'
  put 'contacts/:id' => 'contacts#update'
  delete 'contacts/:id/delete' => 'contacts#destroy', as: 'delete_contact'
  
  get "articles" => 'articles#index', as: 'articles'
  get 'articles/new' => 'articles#new', as: 'new_article'
  post 'articles' => 'articles#create'
  get 'articles/:id' => 'articles#show', as: 'article'
  get 'articles/:id/edit' => 'articles#edit', as: 'edit_article'
  put 'articles/:id' => 'articles#update'
  delete 'articles/:id/delete' => 'articles#destroy', as: 'delete_article'
  
end
