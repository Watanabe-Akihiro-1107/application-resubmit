Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'books#index'
get "books" => "books#books"
post 'books' => 'books#create'
get 'books/:id' => 'books#show', as: 'book'
delete 'books/:id' => 'books#destroy', as: 'destroy_book'
resources :books

end
