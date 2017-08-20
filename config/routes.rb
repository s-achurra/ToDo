Rails.application.routes.draw do

  root to: 'todos#index'

  patch "togglecompleted" => "todos#toggleCompleted", as: :toggle
  resources :todos

end
