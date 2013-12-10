PersonalSite::Application.routes.draw do
  resources :projects

  get "static_pages/splash"
  get "static_pages/contact"
  get "static_pages/projects"
  resources :recipes

  resources :posts
  root to: 'static_pages#splash'
end
