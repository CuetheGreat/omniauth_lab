Rails
  .application
  .routes
  .draw do
    # Add your routes here
    get '/', to: 'welcome#home', as: :root
    post '/logout', to: 'sessions#destroy'

    match '/auth/:provider/callback', to: 'sessions#create', via: %i[get post]
  end
