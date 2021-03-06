require 'sidekiq/web'
Sidekiq::Web.set :session_secret, Rails.application.secrets[:secret_key_base]

class AdminConstraint
  def matches?(request)
    return false unless request.session[:current_admin_id].present?
    admin = Administrator.find_by(id: request.session[:current_admin_id])
    admin.present?
  end
end

Rails.application.routes.draw do

  namespace :admin do
    get 'login', to: 'sessions#new', as: :login
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy', as: :logout
    resource :account, only: [:edit, :update]
    resources :posts do
      get 'publish_down', to: 'posts#publish_down'
      get 'publish_up', to: 'posts#publish_up'
    end
    resources :categories, :images

    root to: 'dashboard#index'
  end

  # write your routes here

  mount Sidekiq::Web => '/sidekiq', constraints: AdminConstraint.new
  #mount ActionCable.server => '/cable'
  root to: 'home#index'

  get '/category/:id', to: 'category#show', as: :show_category
  get '/post/:id', to: 'post#show', as: :show_post

  resources :spide_tasks do
    resources :spide_steps, :spide_limits
  end

  puts "routes env #{Rails.env}"
  if Rails.env.to_s == "development"
    get '/fdfs/:id0/:id1/:file', to: 'proxy#delegate'
  end

end
