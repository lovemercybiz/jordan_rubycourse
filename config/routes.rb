Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :portfolios, except: [:show] do
      put :sort, on: :collection
  end
  get 'react-items', to: 'portfolios#react'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  # get 'pages/home'
  get 'about-me', to: 'pages#about' # this changes  http://localhost:3000/pages/about >> http://localhost:3000/about
  #get 'about', to: 'pages#about' # changing the string after 'get' changes the url in browser, thats how you get custom routes.
  get 'contact', to: 'pages#contact'


  resources :blogs do
      member do
        get :toggle_status
      end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home' #this changed the orginal home page (that you're on rails) to blog's home
end
