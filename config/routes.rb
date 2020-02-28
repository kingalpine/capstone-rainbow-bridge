Rails.application.routes.draw do
  resources :order_line_restrictions
  resources :dietary_restrictions
  resources :task_assignments
  resources :employees
  resources :employee_statuses
  resources :employee_types
  resources :tasks
  resources :task_statuses
  resources :tier_fillings
  resources :fillings
  resources :tiers
  resources :cake_flavors
  resources :frosting_flavors
  resources :shapes
  resources :order_lines
  resources :products
  resources :order_line_statuses
  resources :rental_lines
  resources :rental_items
  resources :orders
  resources :order_types
  resources :order_statuses
  resources :customers
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :customer_statuses
  resources :main
  root "main#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
