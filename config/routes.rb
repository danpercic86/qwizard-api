Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      # get '/quizzes', to: 'quizzes#index'
      # post '/quizzes', to: 'quizzes#create'
      # get '/quizzes/:id', to: 'quizzes#show'
      # put '/quizzes/:id', to: 'quizzes#update'
      # delete '/quizzes/:id', to: 'quizzes#destroy'

      resources :quizzes
    end
  end
end
