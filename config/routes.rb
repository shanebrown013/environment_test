Rails.application.routes.draw do
  resources :books
  root 'books#index'
  get 'books/delete/:id', to:'books#delete', as:'delete_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
