Rails.application.routes.draw do
  get 'professions/new'

  get 'professions/create'

  devise_for :admins, skip: :registrations

  root 'home#index'

  resources :leads
  resources :professions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
