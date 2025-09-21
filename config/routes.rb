Rails.application.routes.draw do
  root "problems#home"

  resources :problems, only: [ :index ] do
    collection do
      post :answer
      get :result
    end
  end
end
