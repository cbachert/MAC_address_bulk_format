Rails.application.routes.draw do
  get '/impressum', to: 'static_pages#impressum'
  get '/datenschutz', to: 'static_pages#datenschutz'

  root 'format#index'
end
