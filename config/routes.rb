Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  defaults format: :json do
    root "home#index"
    post 'home/create', to: 'home#create'
  end
end
