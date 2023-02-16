Rails.application.routes.draw do
  

  get 'pages/home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
  
  resources :users, :achievement_standards, :capabilities, :class_groups, :content_descriptors, :learning_areas, :modes, :priorities, :strands, :students, :subjects, :substrands, :subthreads, :tasks, :year_descriptions, :years


end
