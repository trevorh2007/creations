Rails.application.routes.draw do
  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to
  # Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the
  # :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being
  # the default of "spree".

  
  mount Spree::Core::Engine, at: '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/admin/blog-create', to: 'spree/admin/blogs#create', as: 'blog_create'
  # get '/admin/blog-edit', to: 'spree/admin/blogs#edit', as: 'blog_edit'
  # get '/admin/blogs', to: 'spree/admin/blogs#index', as: 'blog_index'
  Spree::Core::Engine.add_routes do
    namespace :admin do
      resources :blog
    end
    resources :blog
  end
end
