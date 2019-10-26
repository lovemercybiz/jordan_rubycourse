Rails.application.routes.draw do
  resources :portfolios
  # get 'pages/home'
  get 'about-me', to: 'pages#about' # this changes  http://localhost:3000/pages/about >> http://localhost:3000/about
  #get 'about', to: 'pages#about' # changing the string after 'get' changes the url in browser, thats how you get custom routes.
  get 'contact', to: 'pages#contact'
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home' #this changed the orginal home page (that you're on rails) to blog's home
end
