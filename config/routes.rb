Rails.application.routes.draw do
  root to: 'static_pages#home'
  get 'contact',     to: 'static_pages#contact', as: 'contact'
  get 'about',       to: 'static_pages#about',   as: 'team_lyon'
  get 'about/me',    to: 'static_pages#me',      as: 'me'
  get 'about/group', to: 'static_pages#group',   as: 'group'

  get 'new',        to: 'users#new',   as: 'new_user'
  post 'create',    to: 'users#create',as: 'creation'
  get '/show/:username', to: 'users#show',  as: 'show_user'
  get 'error',	    to: 'users#error', as: 'error'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
