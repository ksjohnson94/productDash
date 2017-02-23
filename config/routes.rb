Rails.application.routes.draw do
  get '/', to: 'products#index'
  get '/products/:id/show', to: 'products#show'
  get '/products/new', to: 'products#new'
  get '/products/:id/edit', to: 'products#edit'
  get '/products/:id/destroy', to: 'products#destroy'
  get '/back', to: 'products#index'
  post '/products/new/create', to: 'products#create'
  patch '/products/:id/update', to: 'products#update'
  get '/comments', to: 'comments#index'
  post '/products/:id', to: 'comments#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
