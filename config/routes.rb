PersonalSite::Application.routes.draw do
  devise_for :users
  resources :projects

  get "/home/", to: "static_pages#splash"
  get "/about/", to: "static_pages#contact"
  # get "static_pages/projects"
  resources :recipes

  resources :posts
  root to: 'static_pages#splash'
end
