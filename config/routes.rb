Rails.application.routes.draw do
  root 'main#index'

  get '*path', to: redirect('/')
end
