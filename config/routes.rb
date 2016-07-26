Rails.application.routes.draw do
  api_version(module: 'v1', path: {value: 'v1'}) do
    resources :questions
  end

  namespace :admin do
    resources :questions
  end

  root 'admin/questions#index'
end
