Rails.application.routes.draw do
  get 'listns_controller/index'

  get 'listns_controller/show'

  get 'listns_controller/new'

  get 'listns_controller/create'

  get 'listns_controller/edit'

  get 'listns_controller/update'

  get 'listns_controller/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :listns do
    resources :notes
  end
end
