Rails.application.routes.draw do
 
  

  get 'pages/home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

# Defines the root path route ("/") Will redirect unathorised users
  root :to => "pages#home"

 
  get '/login' => 'session#new'         # This will be our sign-in page.
  post '/login' => 'session#create'     # This will be the path to which the sign-in form is posted
  delete '/login' => 'session#destroy'  # This will be the path users use to log-out.

  #Bespoke signup route
  get '/signup' => 'users#new'



  #Create all other routes  
  resources :users, :achievement_standards, :capabilities, :class_groups, :content_descriptors, :learning_areas, :modes, :priorities, :strands, :students, :subjects, :substrands, :subthreads, :tasks, :year_descriptions, :years

 
 


end
