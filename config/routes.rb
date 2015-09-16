Rails.application.routes.draw do
    root 'pages#index'

    # (Static) pages
    get 'contact', to: 'pages#contact', as: :contact
    get 'merkur', to: 'pages#merkur', as: :merkur

    # Create a new customer case
    post 'case', to: 'pages#customer_case', as: :customer_case

    # Projects
    get 'projects', to: 'projects#index', as: :projects
    get 'projects/view/:id/(:title)', to: 'projects#view', as: :project

    # Manager 
    namespace :manager do
        root 'projects#index'
        
        resource :projects        
    end
end
