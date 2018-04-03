Rails.application.routes.draw do
  resources :bill_records, only: [:new, :create, :show]
  root :to => 'bill_records#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
