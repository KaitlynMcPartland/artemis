Rails.application.routes.draw do
  get 'crimepoints/index'

  get 'crimepoints/show'

  root 'crimepoints#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
