Rails.application.routes.draw do
  root "articles#index"

  get 'articles/search',to: "articles#search"
  resources :articles do
    resources :comments
  end
end
