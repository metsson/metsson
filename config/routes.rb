Rails.application.routes.draw do
    root 'pages#index'

    # Projects' routes
    get 'projects', to: 'projects#index', as: :projects
    get 'projects/view/:id/(:title)', to: 'projects#view', as: :project
end
