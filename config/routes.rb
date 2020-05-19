Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'ads', action: :index, controller: 'ads'

  get 'ads/new/', action: :new, controller: 'ads'

  get 'ads/success', action: :success, controller: 'ads'
  
  get 'ads/error', action: :error, controller: 'ads'
  
  get 'ads/:id', action: :show, controller: 'ads'

  get 'ads/:id/edit', action: :edit, controller: 'ads'

  patch 'ads/:id/update', action: :update, controller: 'ads'

  get 'ads/:id/delete', action: :delete, controller: 'ads'
  
  post 'ads/create', action: :create, controller: 'ads'



end
